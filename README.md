![image](https://github.com/user-attachments/assets/5a488d2f-b935-4327-8d83-30a182d23184)

# Clarifai Swift gRPC Client

This is the official Clarifai gRPC Swift client for interacting with our powerful recognition
[API](https://docs.clarifai.com).
Clarifai provides a platform for data scientists, developers, researchers and enterprises to master the entire
artificial intelligence lifecycle. Gather valuable business insights from images, video and text using computer vision
and natural language processing.

* Try the Clarifai demo at: https://clarifai.com/demo
* Sign up for a free account at: https://portal.clarifai.com/signup
* Read the documentation at: https://docs.clarifai.com/

![GitHub release (latest by date)](https://img.shields.io/github/v/release/Clarifai/clarifai-swift-grpc)
[![Build](https://github.com/Clarifai/clarifai-swift-grpc/workflows/Run%20tests/badge.svg)](https://github.com/Clarifai/clarifai-swift-grpc/actions)

## Installation

Add the library to the `dependencies` list in your project's `Package.swift` file.

```
    dependencies: [
        // ... Your other dependencies.
        .package(name: "ClarifaiGrpc", url: "https://github.com/Clarifai/clarifai-swift-grpc", from: "0.0.1")
    ],
```

Use the dependency in your target:

```
    targets: [
        .target(
            name: "YOUR-TARGET",
            dependencies: ["ClarifaiGrpc"]),
    ]
```

## Versioning

This library doesn't use semantic versioning. The first two version numbers (`X.Y` out of `X.Y.Z`) follow the API (backend) versioning, and
whenever the API gets updated, this library follows it.

The third version number (`Z` out of `X.Y.Z`) is used by this library for any independent releases of library-specific improvements and bug fixes.

## Getting started

Construct the client and setup your API key or Personal Access Token in the `metadata` variable.

```swift
import NIO
import NIOHPACK
import GRPC
import ClarifaiGrpc

let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
let channel = ClientConnection.secure(group: group).connect(host: "api.clarifai.com", port: 443)

var authHeaders: HPACKHeaders = ["Authorization": "Key MY_CLARIFAI_API_KEY_OR_PAT"]
let client = Clarifai_Api_V2Client(channel: channel, defaultCallOptions: CallOptions(customMetadata: authHeaders))
```

Predict concepts in an image:

```swift
let response = try client.postModelOutputs(
    Clarifai_Api_PostModelOutputsRequest.with {
        // This is the ID of the publicly available General model.
        $0.modelID = "aaa03c23b3724a16a56b629203edc62c";
        $0.inputs = [
            Clarifai_Api_Input.with {
                $0.data = Clarifai_Api_Data.with {
                    $0.image = Clarifai_Api_Image.with {
                        $0.url = "https://samples.clarifai.com/dog2.jpeg"
                    }
                }
            }
        ]
    }
).response.wait()

if response.status.code != Clarifai_Api_Status_StatusCode.success {
    print("Request failed, response: \(response)")
} else {
    print("Predicted concepts")
    for concept in response.outputs[0].data.concepts {
        print("\(concept.name): \(concept.value)")
    }
}
```
