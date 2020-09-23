import NIO
import NIOHPACK
import GRPC
import XCTest
@testable import clarifai_swift_grpc

enum ClarifaiError: Error {
    case runtimeError(String)
}

final class clarifai_swift_grpcTests: XCTestCase {
    func testListModels() throws {
        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
        let channel = ClientConnection.insecure(group: group).connect(host: "api-grpc.clarifai.com", port: 18080)
        defer {
            try? group.syncShutdownGracefully()
        }

        let client = Clarifai_Api_V2Client(channel: channel)
        defer {
            try? client.channel.close().wait()
        }

        let apiKey = ProcessInfo.processInfo.environment["CLARIFAI_API_KEY"];
        if apiKey == nil {
            throw ClarifaiError.runtimeError("Please set the CLARIFAI_API_KEY environment variable.")
        }

        var headers: HPACKHeaders = [:]
        headers.add(name: "authorization", value: "Key " + apiKey!)

        let call = client.listModels(Clarifai_Api_ListModelsRequest(), callOptions: CallOptions(customMetadata: headers))
        let listModelsResponse: Clarifai_Api_MultiModelResponse
        do {
            listModelsResponse = try call.response.wait()
        } catch {
            print("The RPC failed! \(error)")
            return
        }

        XCTAssertEqual(listModelsResponse.status.code, Clarifai_Api_Status_StatusCode.success)
        XCTAssertNotEqual(listModelsResponse.models.count, 0)
    }

    static var allTests = [
        ("testListModels", testListModels),
    ]
}
