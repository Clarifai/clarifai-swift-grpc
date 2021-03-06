// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/clarifai/api/status/status.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Clarifai_Api_Status_Status {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Status code from internal codes.
  public var code: Clarifai_Api_Status_StatusCode = .zero

  /// A longer description of the error.
  public var description_p: String = String()

  /// More details of the given error.
  public var details: String = String()

  /// For some environment we may return a stack trace to help debug
  /// any issues.
  public var stackTrace: [String] = []

  /// specifically for long running jobs
  public var percentCompleted: UInt32 = 0

  /// if status is pending, how much time is remaining (in seconds)
  public var timeRemaining: UInt32 = 0

  /// If we want to return a request id in the base status field
  public var reqID: String = String()

  /// Internal Annotation (do not set in production, for internal Clarifai use only).
  public var internalDetails: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Base message to return when there is a internal server error that
/// is not caught elsewhere.
public struct Clarifai_Api_Status_BaseResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Clarifai_Api_Status_Status {
    get {return _status ?? Clarifai_Api_Status_Status()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  public var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  public mutating func clearStatus() {self._status = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _status: Clarifai_Api_Status_Status? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "clarifai.api.status"

extension Clarifai_Api_Status_Status: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Status"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
    2: .same(proto: "description"),
    3: .same(proto: "details"),
    4: .standard(proto: "stack_trace"),
    5: .standard(proto: "percent_completed"),
    6: .standard(proto: "time_remaining"),
    7: .standard(proto: "req_id"),
    8: .standard(proto: "internal_details"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.code)
      case 2: try decoder.decodeSingularStringField(value: &self.description_p)
      case 3: try decoder.decodeSingularStringField(value: &self.details)
      case 4: try decoder.decodeRepeatedStringField(value: &self.stackTrace)
      case 5: try decoder.decodeSingularUInt32Field(value: &self.percentCompleted)
      case 6: try decoder.decodeSingularUInt32Field(value: &self.timeRemaining)
      case 7: try decoder.decodeSingularStringField(value: &self.reqID)
      case 8: try decoder.decodeSingularStringField(value: &self.internalDetails)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.code != .zero {
      try visitor.visitSingularEnumField(value: self.code, fieldNumber: 1)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 2)
    }
    if !self.details.isEmpty {
      try visitor.visitSingularStringField(value: self.details, fieldNumber: 3)
    }
    if !self.stackTrace.isEmpty {
      try visitor.visitRepeatedStringField(value: self.stackTrace, fieldNumber: 4)
    }
    if self.percentCompleted != 0 {
      try visitor.visitSingularUInt32Field(value: self.percentCompleted, fieldNumber: 5)
    }
    if self.timeRemaining != 0 {
      try visitor.visitSingularUInt32Field(value: self.timeRemaining, fieldNumber: 6)
    }
    if !self.reqID.isEmpty {
      try visitor.visitSingularStringField(value: self.reqID, fieldNumber: 7)
    }
    if !self.internalDetails.isEmpty {
      try visitor.visitSingularStringField(value: self.internalDetails, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Clarifai_Api_Status_Status, rhs: Clarifai_Api_Status_Status) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.details != rhs.details {return false}
    if lhs.stackTrace != rhs.stackTrace {return false}
    if lhs.percentCompleted != rhs.percentCompleted {return false}
    if lhs.timeRemaining != rhs.timeRemaining {return false}
    if lhs.reqID != rhs.reqID {return false}
    if lhs.internalDetails != rhs.internalDetails {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Clarifai_Api_Status_BaseResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BaseResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._status)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Clarifai_Api_Status_BaseResponse, rhs: Clarifai_Api_Status_BaseResponse) -> Bool {
    if lhs._status != rhs._status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
