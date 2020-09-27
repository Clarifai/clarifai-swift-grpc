![Clarifai logo](docs/logo.png)

# Clarifai Swift gRPC Client

This is the official Clarifai gRPC Swift client for interacting with our powerful recognition
[API](https://docs.clarifai.com).
The Clarifai API offers image and video recognition as a service. Whether you have one image or
billions, you are only steps away from using artificial intelligence to recognize your visual
content.

* Try the Clarifai demo at: https://clarifai.com/demo
* Sign up for a free account at: https://portal.clarifai.com/signup
* Read the documentation at: https://docs.clarifai.com/

[![Build](https://github.com/Clarifai/clarifai-swift-grpc/workflows/Run%20tests/badge.svg)](https://github.com/Clarifai/clarifai-swift-grpc/actions)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/Clarifai/clarifai-swift-grpc)

## Installation

Add the library to the `dependencies` list in your project's `Package.swift` file.

```
    dependencies: [
        // ... Your other dependencies.
        .package(url: "https://github.com/Clarifai/clarifai-swift-grpc", from: "0.0.1")
    ],
```

Use the dependency in your target:

```
    targets: [
        .target(
            name: "YOUR-TARGET",
            dependencies: ["clarifai-swift-grpc"]),
    ]
```

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
