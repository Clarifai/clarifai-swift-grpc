// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/clarifai/auth/util/extension.proto
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

// MARK: - Extension support defined in extension.proto.

// MARK: - Extension Properties

// Swift Extensions on the exteneded Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension SwiftProtobuf.Google_Protobuf_FieldOptions {

  /// indicates if this field should be private. If true, then internal use only. If False,
  /// then publicly avaliable to world.
  public var Clarifai_Auth_Util_clPrivateField: Bool {
    get {return getExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_field) ?? false}
    set {setExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_field, value: newValue)}
  }
  /// Returns true if extension `Clarifai_Auth_Util_Extensions_cl_private_field`
  /// has been explicitly set.
  public var hasClarifai_Auth_Util_clPrivateField: Bool {
    return hasExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_field)
  }
  /// Clears the value of extension `Clarifai_Auth_Util_Extensions_cl_private_field`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearClarifai_Auth_Util_clPrivateField() {
    clearExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_field)
  }
}

extension SwiftProtobuf.Google_Protobuf_MessageOptions {

  /// indicates if this message should be private. If true, then internal use only. If False,
  /// then publicly avaliable to world.
  public var Clarifai_Auth_Util_clPrivateMessage: Bool {
    get {return getExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_message) ?? false}
    set {setExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_message, value: newValue)}
  }
  /// Returns true if extension `Clarifai_Auth_Util_Extensions_cl_private_message`
  /// has been explicitly set.
  public var hasClarifai_Auth_Util_clPrivateMessage: Bool {
    return hasExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_message)
  }
  /// Clears the value of extension `Clarifai_Auth_Util_Extensions_cl_private_message`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearClarifai_Auth_Util_clPrivateMessage() {
    clearExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_message)
  }
}

extension SwiftProtobuf.Google_Protobuf_MethodOptions {

  /// indicates if this rpc should be private. If true, then internal use only. If False,
  /// then publicly available to world.
  public var Clarifai_Auth_Util_clPrivateRpc: Bool {
    get {return getExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_rpc) ?? false}
    set {setExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_rpc, value: newValue)}
  }
  /// Returns true if extension `Clarifai_Auth_Util_Extensions_cl_private_rpc`
  /// has been explicitly set.
  public var hasClarifai_Auth_Util_clPrivateRpc: Bool {
    return hasExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_rpc)
  }
  /// Clears the value of extension `Clarifai_Auth_Util_Extensions_cl_private_rpc`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearClarifai_Auth_Util_clPrivateRpc() {
    clearExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_private_rpc)
  }

  /// For each grpc method we define a list of required low-level auth scopes that are needed
  /// for the key that is issuing the request. These are checked at authorization time for the
  /// request as one of the first things in the life of a request once it reaches out API
  /// servers. There are additional checks for each scope when the resource is used throughout the
  /// backend in order to protect that resource. For example, Inputs_Add protects the writes to the
  /// inputs DB table. Since we know every PostInputs call needs to do that, we add Inputs_Add scope
  /// to the cl_depending_scopes list for the PostInputs method.
  ///
  /// This is only checked valid when used with KeyAuth cl_auth_type.
  ///
  /// This should be the absolute minimum required scopes to make API calls with the method
  /// that this options is used for. If there are some scopes that are needed some of the time
  /// depending on the request, then leave those out as they will be checked at the tighest
  /// possible portion of the codebase to protect that resource and won't effect every API call. For
  /// example, the PostAnnotations call is often used to add concepts as well. If those concepts are
  /// new, then the Concepts_Add scope will be needed. But since you don't always annotate with
  /// concepts, it is not a hard requirements that Concepts_Add is used.
  public var Clarifai_Auth_Util_clDependingScopes: [Clarifai_Auth_Scope_S] {
    get {return getExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_depending_scopes) ?? []}
    set {setExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_depending_scopes, value: newValue)}
  }
  /// Returns true if extension `Clarifai_Auth_Util_Extensions_cl_depending_scopes`
  /// has been explicitly set.
  public var hasClarifai_Auth_Util_clDependingScopes: Bool {
    return hasExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_depending_scopes)
  }
  /// Clears the value of extension `Clarifai_Auth_Util_Extensions_cl_depending_scopes`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearClarifai_Auth_Util_clDependingScopes() {
    clearExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_depending_scopes)
  }

  /// This is the authorizer type for the endpoint our of multiple backend authorizers.
  public var Clarifai_Auth_Util_clAuthType: Clarifai_Auth_Types_AuthType {
    get {return getExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_auth_type) ?? .undef}
    set {setExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_auth_type, value: newValue)}
  }
  /// Returns true if extension `Clarifai_Auth_Util_Extensions_cl_auth_type`
  /// has been explicitly set.
  public var hasClarifai_Auth_Util_clAuthType: Bool {
    return hasExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_auth_type)
  }
  /// Clears the value of extension `Clarifai_Auth_Util_Extensions_cl_auth_type`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearClarifai_Auth_Util_clAuthType() {
    clearExtensionValue(ext: Clarifai_Auth_Util_Extensions_cl_auth_type)
  }

}

// MARK: - File's ExtensionMap: Clarifai_Auth_Util_Extension_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
public let Clarifai_Auth_Util_Extension_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  Clarifai_Auth_Util_Extensions_cl_private_field,
  Clarifai_Auth_Util_Extensions_cl_private_rpc,
  Clarifai_Auth_Util_Extensions_cl_depending_scopes,
  Clarifai_Auth_Util_Extensions_cl_auth_type,
  Clarifai_Auth_Util_Extensions_cl_private_message
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

/// indicates if this field should be private. If true, then internal use only. If False,
/// then publicly avaliable to world.
public let Clarifai_Auth_Util_Extensions_cl_private_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufBool>, SwiftProtobuf.Google_Protobuf_FieldOptions>(
  _protobuf_fieldNumber: 80320,
  fieldName: "clarifai.auth.util.cl_private_field"
)

/// indicates if this rpc should be private. If true, then internal use only. If False,
/// then publicly available to world.
public let Clarifai_Auth_Util_Extensions_cl_private_rpc = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufBool>, SwiftProtobuf.Google_Protobuf_MethodOptions>(
  _protobuf_fieldNumber: 80321,
  fieldName: "clarifai.auth.util.cl_private_rpc"
)

/// For each grpc method we define a list of required low-level auth scopes that are needed
/// for the key that is issuing the request. These are checked at authorization time for the
/// request as one of the first things in the life of a request once it reaches out API
/// servers. There are additional checks for each scope when the resource is used throughout the
/// backend in order to protect that resource. For example, Inputs_Add protects the writes to the
/// inputs DB table. Since we know every PostInputs call needs to do that, we add Inputs_Add scope
/// to the cl_depending_scopes list for the PostInputs method.
///
/// This is only checked valid when used with KeyAuth cl_auth_type.
///
/// This should be the absolute minimum required scopes to make API calls with the method
/// that this options is used for. If there are some scopes that are needed some of the time
/// depending on the request, then leave those out as they will be checked at the tighest
/// possible portion of the codebase to protect that resource and won't effect every API call. For
/// example, the PostAnnotations call is often used to add concepts as well. If those concepts are
/// new, then the Concepts_Add scope will be needed. But since you don't always annotate with
/// concepts, it is not a hard requirements that Concepts_Add is used.
public let Clarifai_Auth_Util_Extensions_cl_depending_scopes = SwiftProtobuf.MessageExtension<SwiftProtobuf.PackedEnumExtensionField<Clarifai_Auth_Scope_S>, SwiftProtobuf.Google_Protobuf_MethodOptions>(
  _protobuf_fieldNumber: 80322,
  fieldName: "clarifai.auth.util.cl_depending_scopes"
)

/// This is the authorizer type for the endpoint our of multiple backend authorizers.
public let Clarifai_Auth_Util_Extensions_cl_auth_type = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalEnumExtensionField<Clarifai_Auth_Types_AuthType>, SwiftProtobuf.Google_Protobuf_MethodOptions>(
  _protobuf_fieldNumber: 80323,
  fieldName: "clarifai.auth.util.cl_auth_type"
)

/// indicates if this message should be private. If true, then internal use only. If False,
/// then publicly avaliable to world.
public let Clarifai_Auth_Util_Extensions_cl_private_message = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufBool>, SwiftProtobuf.Google_Protobuf_MessageOptions>(
  _protobuf_fieldNumber: 80324,
  fieldName: "clarifai.auth.util.cl_private_message"
)
