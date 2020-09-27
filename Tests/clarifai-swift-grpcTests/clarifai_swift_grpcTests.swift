import NIO
import NIOHPACK
import GRPC
import XCTest
@testable import clarifai_swift_grpc

enum ClarifaiError: Error {
    case runtimeError(String)
}

final class clarifai_swift_grpcTests: XCTestCase {

    private let GENERAL_MODEL_ID = "aaa03c23b3724a16a56b629203edc62c"
    private let DOG_IMAGE_URL = "https://samples.clarifai.com/dog2.jpeg"
    private let NON_EXISTING_IMAGE_URL = "https://example.com/this-image-does-not-exist.jpg"

    private var group: MultiThreadedEventLoopGroup?
    private var channel: ClientConnection?
    private var client: Clarifai_Api_V2Client?

    override func setUp() {
        super.setUp()

        var base = ProcessInfo.processInfo.environment["CLARIFAI_GRPC_BASE"];
        if base == nil {
            base = "api.clarifai.com"
        }

        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
        let channel = ClientConnection.secure(group: group).connect(host: base!, port: 443)

        self.group = group
        self.channel = channel

        let customMetadata: HPACKHeaders
        do {
            customMetadata = try authHeaders()
        } catch ClarifaiError.runtimeError(let message) {
            XCTFail(message)
            return
        } catch {
            XCTFail("Unknown error")
            return
        }

        self.client = Clarifai_Api_V2Client(channel: channel, defaultCallOptions: CallOptions(customMetadata: customMetadata))
    }

    private func authHeaders() throws -> HPACKHeaders {
        let apiKey = ProcessInfo.processInfo.environment["CLARIFAI_API_KEY"];
        if apiKey == nil {
            throw ClarifaiError.runtimeError("Please set the CLARIFAI_API_KEY environment variable.")
        }

        let headers: HPACKHeaders = ["Authorization": "Key " + apiKey!]
        return headers
    }

    override func tearDown() {
        if let channel = self.channel {
            XCTAssertNoThrow(try channel.close().wait())
        }
        if let group = self.group {
            XCTAssertNoThrow(try group.syncShutdownGracefully())
        }

        super.tearDown()
    }

    func testGetModel() throws {
        let response = try client!.getModel(Clarifai_Api_GetModelRequest.with {$0.modelID = GENERAL_MODEL_ID}).response.wait()
        try raiseOnFailure(response.status)
        XCTAssertEqual(response.model.id, GENERAL_MODEL_ID)
    }

    func testListModelsWithPagination() throws {
        let response1 = try client!.listModels(Clarifai_Api_ListModelsRequest.with {$0.perPage = 2}).response.wait()
        try raiseOnFailure(response1.status)
        XCTAssertEqual(response1.models.count, 2)

        // We shouldn't have 1000*500 number of models, so the result should be empty.
        let response2 = try client!.listModels(Clarifai_Api_ListModelsRequest.with {$0.page = 1000; $0.perPage = 500}).response.wait()
        try raiseOnFailure(response2.status)
        XCTAssertEqual(response2.models.count, 0)
    }

    func testPostModelOutputs() throws {
        let response = try client!.postModelOutputs(
            Clarifai_Api_PostModelOutputsRequest.with {
                $0.modelID = GENERAL_MODEL_ID;
                $0.inputs = [
                    Clarifai_Api_Input.with {
                        $0.data = Clarifai_Api_Data.with {
                            $0.image = Clarifai_Api_Image.with {
                                $0.url = DOG_IMAGE_URL
                            }
                        }
                    }
                ]
            }
        ).response.wait()

        try raiseOnFailure(response.status)
        XCTAssertNotEqual(response.outputs[0].data.concepts.count, 0)
    }

    func testFailedPostModelOutputs() throws {
        let response = try client!.postModelOutputs(
            Clarifai_Api_PostModelOutputsRequest.with {
                $0.modelID = GENERAL_MODEL_ID;
                $0.inputs = [
                    Clarifai_Api_Input.with {
                        $0.data = Clarifai_Api_Data.with {
                            $0.image = Clarifai_Api_Image.with {
                                $0.url = NON_EXISTING_IMAGE_URL
                            }
                        }
                    }
                ]
            }
        ).response.wait()

        XCTAssertEqual(response.status.code, Clarifai_Api_Status_StatusCode.failure)
        XCTAssertEqual(response.outputs[0].status.code, Clarifai_Api_Status_StatusCode.inputDownloadFailed)
    }

    func testMixedSuccessPostModelOutputs() throws {
        let response = try client!.postModelOutputs(
            Clarifai_Api_PostModelOutputsRequest.with {
                $0.modelID = GENERAL_MODEL_ID;
                $0.inputs = [
                    Clarifai_Api_Input.with {
                        $0.data = Clarifai_Api_Data.with {
                            $0.image = Clarifai_Api_Image.with {
                                $0.url = DOG_IMAGE_URL
                            }
                        }
                    },
                    Clarifai_Api_Input.with {
                        $0.data = Clarifai_Api_Data.with {
                            $0.image = Clarifai_Api_Image.with {
                                $0.url = NON_EXISTING_IMAGE_URL
                            }
                        }
                    },
                ]
            }
        ).response.wait()

        XCTAssertEqual(response.status.code, Clarifai_Api_Status_StatusCode.mixedStatus)
        XCTAssertEqual(response.outputs[0].status.code, Clarifai_Api_Status_StatusCode.success)
        XCTAssertEqual(response.outputs[1].status.code, Clarifai_Api_Status_StatusCode.inputDownloadFailed)
    }

    private func raiseOnFailure(_ status: Clarifai_Api_Status_Status) throws {
        if status.code != Clarifai_Api_Status_StatusCode.success {
            throw ClarifaiError.runtimeError("Unexpected failure response \(status)")
        }
    }

    static var allTests = [
        ("testGetModel", testGetModel),
        ("testListModelsWithPagination", testListModelsWithPagination),
        ("testPostModelOutputs", testPostModelOutputs),
        ("testFailedPostModelOutputs", testFailedPostModelOutputs),
        ("testMixedSuccessPostModelOutputs", testMixedSuccessPostModelOutputs),
    ]
}
