// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "clarifai-swift-grpc",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "clarifai-swift-grpc",
            targets: ["clarifai-swift-grpc"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.0.0-alpha.19")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "clarifai-swift-grpc",
            dependencies: ["SwiftProtobuf", .product(name: "GRPC", package: "grpc-swift")]),
        .testTarget(
            name: "clarifai-swift-grpcTests",
            dependencies: ["clarifai-swift-grpc"]),
    ]
)
