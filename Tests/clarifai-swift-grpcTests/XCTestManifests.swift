import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(clarifai_swift_grpcTests.allTests),
    ]
}
#endif
