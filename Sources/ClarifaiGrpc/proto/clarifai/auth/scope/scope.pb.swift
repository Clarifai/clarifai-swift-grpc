// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/clarifai/auth/scope/scope.proto
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

/// Next index: 41
/// NOTE: When updating the list of "clarifai_exposed" scopes, please also
/// update the TestScopes function in main_key_test.go and TestGetExposedScopes function in
/// scope_test.go
///
/// The dependencies listed for each scope are simply recommendations so that a user
/// cannot make a key that would be useless. Beyond the key creation they are not enforced
/// but rather the scopes are enforce when data is accessed.
///
/// There is the following conventions in place, make sure you add them to the scopes for all new
/// resource types:
///
/// 1. *_Add requires the corresponding _Get.
/// 2. *_Delete requires the corresponding _Add and _Get.
/// 3. *_Patch is deprecated and not check anywhere.
public enum Clarifai_Auth_Scope_S: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// introduce undef so that the zero (default/unset) value of the enum is not a real
  /// permission.  undef is only present for this purpose and should not be used
  /// to indicate any "real" value.
  case undef // = 0
  case all // = 1

  /// Make an rpc to our prediction services.
  case predict // = 2

  /// Make an rpc to our search services.
  case earch // = 3

  /// Write to the inputs table in the DB.
  case inputsAdd // = 4

  /// Read from the inputs table in the DB.
  case inputsGet // = 5

  /// To patch we need read/write.
  /// Deprecated.
  /// Optionally needs Concepts_Add.
  case inputsPatch // = 7

  /// To delete we need read/write
  case inputsDelete // = 8

  /// Deprecated.
  case outputsPatch // = 9

  /// Write to the concepts DB tables.
  case conceptsAdd // = 10

  /// Read from the concepts DB tables.
  case conceptsGet // = 11

  /// To patch we need read/write.
  /// Deprecated
  case conceptsPatch // = 12

  /// To delete we need read/write.
  /// Note: not implemented.
  case conceptsDelete // = 13

  /// Write to the models DB tables.
  case modelsAdd // = 14

  /// Read from the models and models versions DB tables.
  case modelsGet // = 15

  /// To patch we need read/write.
  /// Deprecated.
  case modelsPatch // = 16

  /// To delete we need read/write.
  case modelsDelete // = 17

  /// Note: Models_Train is effectively doing POST /models/{models_id}/versions so it's treated that
  /// way in terms of data access under the hood.
  /// Write to the model versions DB table.
  case modelsTrain // = 26

  /// Internal only model syncing.
  case modelsSync // = 27

  /// Write to the workflows DB table.
  case workflowsAdd // = 18

  /// Read from the workflows DB table.
  case workflowsGet // = 19

  /// To patch we need read/write.
  /// Deprecated.
  case workflowsPatch // = 20

  /// To delete we need read/write.
  case workflowsDelete // = 21
  case workflowMetricsGet // = 96
  case workflowMetricsAdd // = 97
  case workflowMetricsDelete // = 98

  /// Write to the visualizations DB table.
  /// Deprecated
  case tsnevisualizationsAdd // = 24

  /// Read from the visualizations DB table.
  /// Deprecated
  case tsnevisualizationsGet // = 25

  /// Write to the annotations DB table.
  case annotationsAdd // = 37

  /// Read from the annotations DB table.
  case annotationsGet // = 38

  /// To patch we need read/write.
  /// Deprecated.
  case annotationsPatch // = 39

  /// To delete we need read/write.
  case annotationsDelete // = 40

  /// Write to the collectors DB table.
  case collectorsAdd // = 41

  /// Read from the collectors DB table.
  case collectorsGet // = 42

  /// To delete we need read/write.
  case collectorsDelete // = 43

  /// Write to the apps DB table.
  case appsAdd // = 44

  /// Read from the apps DB table.
  case appsGet // = 45

  /// To delete we need read/write.
  case appsDelete // = 46

  /// Write to the keys DB table.
  case keysAdd // = 47

  /// Read from the keys DB table.
  case keysGet // = 48

  /// To delete we need read/write.
  case keysDelete // = 49

  /// Write to the app sharing DB table
  case collaboratorsAdd // = 51

  /// Read from the app sharing DB table
  case collaboratorsGet // = 50

  /// To delete we need read/write
  case collaboratorsDelete // = 52

  /// Write to the metrics table
  case metricsAdd // = 54

  /// Read from metrics table
  case metricsGet // = 53

  /// To delete we need read/write
  case metricsDelete // = 63

  /// Write to tasks DB table.
  case tasksAdd // = 55

  /// Read from the tasks DB table.
  case tasksGet // = 56

  /// To delete we need read/write
  case tasksDelete // = 70

  /// Write to the password_policies DB table
  case passwordPoliciesAdd // = 57

  /// Read from the password_policies DB table
  case passwordPoliciesGet // = 58

  /// To delete password_policies we need read/write
  case passwordPoliciesDelete // = 59

  /// Read from label orders table
  case labelOrdersGet // = 67

  /// Write to label orders table
  case labelOrdersAdd // = 68

  /// To delete label orders we need read/write
  case labelOrdersDelete // = 69

  /// Read from user_feature_configs table
  case userFeatureConfigsGet // = 71

  /// CRUD on FindDuplicateAnnotationsJobs table
  case findDuplicateAnnotationsJobsAdd // = 102
  case findDuplicateAnnotationsJobsGet // = 103
  case findDuplicateAnnotationsJobsDelete // = 104
  case UNRECOGNIZED(Int)

  public init() {
    self = .undef
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .undef
    case 1: self = .all
    case 2: self = .predict
    case 3: self = .earch
    case 4: self = .inputsAdd
    case 5: self = .inputsGet
    case 7: self = .inputsPatch
    case 8: self = .inputsDelete
    case 9: self = .outputsPatch
    case 10: self = .conceptsAdd
    case 11: self = .conceptsGet
    case 12: self = .conceptsPatch
    case 13: self = .conceptsDelete
    case 14: self = .modelsAdd
    case 15: self = .modelsGet
    case 16: self = .modelsPatch
    case 17: self = .modelsDelete
    case 18: self = .workflowsAdd
    case 19: self = .workflowsGet
    case 20: self = .workflowsPatch
    case 21: self = .workflowsDelete
    case 24: self = .tsnevisualizationsAdd
    case 25: self = .tsnevisualizationsGet
    case 26: self = .modelsTrain
    case 27: self = .modelsSync
    case 37: self = .annotationsAdd
    case 38: self = .annotationsGet
    case 39: self = .annotationsPatch
    case 40: self = .annotationsDelete
    case 41: self = .collectorsAdd
    case 42: self = .collectorsGet
    case 43: self = .collectorsDelete
    case 44: self = .appsAdd
    case 45: self = .appsGet
    case 46: self = .appsDelete
    case 47: self = .keysAdd
    case 48: self = .keysGet
    case 49: self = .keysDelete
    case 50: self = .collaboratorsGet
    case 51: self = .collaboratorsAdd
    case 52: self = .collaboratorsDelete
    case 53: self = .metricsGet
    case 54: self = .metricsAdd
    case 55: self = .tasksAdd
    case 56: self = .tasksGet
    case 57: self = .passwordPoliciesAdd
    case 58: self = .passwordPoliciesGet
    case 59: self = .passwordPoliciesDelete
    case 63: self = .metricsDelete
    case 67: self = .labelOrdersGet
    case 68: self = .labelOrdersAdd
    case 69: self = .labelOrdersDelete
    case 70: self = .tasksDelete
    case 71: self = .userFeatureConfigsGet
    case 96: self = .workflowMetricsGet
    case 97: self = .workflowMetricsAdd
    case 98: self = .workflowMetricsDelete
    case 102: self = .findDuplicateAnnotationsJobsAdd
    case 103: self = .findDuplicateAnnotationsJobsGet
    case 104: self = .findDuplicateAnnotationsJobsDelete
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .undef: return 0
    case .all: return 1
    case .predict: return 2
    case .earch: return 3
    case .inputsAdd: return 4
    case .inputsGet: return 5
    case .inputsPatch: return 7
    case .inputsDelete: return 8
    case .outputsPatch: return 9
    case .conceptsAdd: return 10
    case .conceptsGet: return 11
    case .conceptsPatch: return 12
    case .conceptsDelete: return 13
    case .modelsAdd: return 14
    case .modelsGet: return 15
    case .modelsPatch: return 16
    case .modelsDelete: return 17
    case .workflowsAdd: return 18
    case .workflowsGet: return 19
    case .workflowsPatch: return 20
    case .workflowsDelete: return 21
    case .tsnevisualizationsAdd: return 24
    case .tsnevisualizationsGet: return 25
    case .modelsTrain: return 26
    case .modelsSync: return 27
    case .annotationsAdd: return 37
    case .annotationsGet: return 38
    case .annotationsPatch: return 39
    case .annotationsDelete: return 40
    case .collectorsAdd: return 41
    case .collectorsGet: return 42
    case .collectorsDelete: return 43
    case .appsAdd: return 44
    case .appsGet: return 45
    case .appsDelete: return 46
    case .keysAdd: return 47
    case .keysGet: return 48
    case .keysDelete: return 49
    case .collaboratorsGet: return 50
    case .collaboratorsAdd: return 51
    case .collaboratorsDelete: return 52
    case .metricsGet: return 53
    case .metricsAdd: return 54
    case .tasksAdd: return 55
    case .tasksGet: return 56
    case .passwordPoliciesAdd: return 57
    case .passwordPoliciesGet: return 58
    case .passwordPoliciesDelete: return 59
    case .metricsDelete: return 63
    case .labelOrdersGet: return 67
    case .labelOrdersAdd: return 68
    case .labelOrdersDelete: return 69
    case .tasksDelete: return 70
    case .userFeatureConfigsGet: return 71
    case .workflowMetricsGet: return 96
    case .workflowMetricsAdd: return 97
    case .workflowMetricsDelete: return 98
    case .findDuplicateAnnotationsJobsAdd: return 102
    case .findDuplicateAnnotationsJobsGet: return 103
    case .findDuplicateAnnotationsJobsDelete: return 104
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Clarifai_Auth_Scope_S: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Clarifai_Auth_Scope_S] = [
    .undef,
    .all,
    .predict,
    .earch,
    .inputsAdd,
    .inputsGet,
    .inputsPatch,
    .inputsDelete,
    .outputsPatch,
    .conceptsAdd,
    .conceptsGet,
    .conceptsPatch,
    .conceptsDelete,
    .modelsAdd,
    .modelsGet,
    .modelsPatch,
    .modelsDelete,
    .modelsTrain,
    .modelsSync,
    .workflowsAdd,
    .workflowsGet,
    .workflowsPatch,
    .workflowsDelete,
    .workflowMetricsGet,
    .workflowMetricsAdd,
    .workflowMetricsDelete,
    .tsnevisualizationsAdd,
    .tsnevisualizationsGet,
    .annotationsAdd,
    .annotationsGet,
    .annotationsPatch,
    .annotationsDelete,
    .collectorsAdd,
    .collectorsGet,
    .collectorsDelete,
    .appsAdd,
    .appsGet,
    .appsDelete,
    .keysAdd,
    .keysGet,
    .keysDelete,
    .collaboratorsAdd,
    .collaboratorsGet,
    .collaboratorsDelete,
    .metricsAdd,
    .metricsGet,
    .metricsDelete,
    .tasksAdd,
    .tasksGet,
    .tasksDelete,
    .passwordPoliciesAdd,
    .passwordPoliciesGet,
    .passwordPoliciesDelete,
    .labelOrdersGet,
    .labelOrdersAdd,
    .labelOrdersDelete,
    .userFeatureConfigsGet,
    .findDuplicateAnnotationsJobsAdd,
    .findDuplicateAnnotationsJobsGet,
    .findDuplicateAnnotationsJobsDelete,
  ]
}

#endif  // swift(>=4.2)

public struct Clarifai_Auth_Scope_ScopeList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// These are the list of low-level scopes to check from the enum below.
  public var scopes: [Clarifai_Auth_Scope_S] = []

  /// This is a list of fully qualified grpc names to check.
  public var endpoints: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Extension support defined in scope.proto.

// MARK: - Extension Properties

// Swift Extensions on the exteneded Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension SwiftProtobuf.Google_Protobuf_EnumValueOptions {

  /// indicates whether the given scope should be returned by the Get /scopes/ call
  /// or any other call that returns list of available perms.
  public var Clarifai_Auth_Scope_clarfaiExposed: Bool {
    get {return getExtensionValue(ext: Clarifai_Auth_Scope_Extensions_clarfai_exposed) ?? false}
    set {setExtensionValue(ext: Clarifai_Auth_Scope_Extensions_clarfai_exposed, value: newValue)}
  }
  /// Returns true if extension `Clarifai_Auth_Scope_Extensions_clarfai_exposed`
  /// has been explicitly set.
  public var hasClarifai_Auth_Scope_clarfaiExposed: Bool {
    return hasExtensionValue(ext: Clarifai_Auth_Scope_Extensions_clarfai_exposed)
  }
  /// Clears the value of extension `Clarifai_Auth_Scope_Extensions_clarfai_exposed`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearClarifai_Auth_Scope_clarfaiExposed() {
    clearExtensionValue(ext: Clarifai_Auth_Scope_Extensions_clarfai_exposed)
  }

  /// TODO: We have no way of picking extension field numbers within clarifai to guarantee
  /// uniqueness.  Note: 50000-99999 are for organizational use (like this)
  public var Clarifai_Auth_Scope_clarifaiDependingScopes: [Clarifai_Auth_Scope_S] {
    get {return getExtensionValue(ext: Clarifai_Auth_Scope_Extensions_clarifai_depending_scopes) ?? []}
    set {setExtensionValue(ext: Clarifai_Auth_Scope_Extensions_clarifai_depending_scopes, value: newValue)}
  }
  /// Returns true if extension `Clarifai_Auth_Scope_Extensions_clarifai_depending_scopes`
  /// has been explicitly set.
  public var hasClarifai_Auth_Scope_clarifaiDependingScopes: Bool {
    return hasExtensionValue(ext: Clarifai_Auth_Scope_Extensions_clarifai_depending_scopes)
  }
  /// Clears the value of extension `Clarifai_Auth_Scope_Extensions_clarifai_depending_scopes`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearClarifai_Auth_Scope_clarifaiDependingScopes() {
    clearExtensionValue(ext: Clarifai_Auth_Scope_Extensions_clarifai_depending_scopes)
  }

}

// MARK: - File's ExtensionMap: Clarifai_Auth_Scope_Scope_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
public let Clarifai_Auth_Scope_Scope_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  Clarifai_Auth_Scope_Extensions_clarfai_exposed,
  Clarifai_Auth_Scope_Extensions_clarifai_depending_scopes
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

/// indicates whether the given scope should be returned by the Get /scopes/ call
/// or any other call that returns list of available perms.
public let Clarifai_Auth_Scope_Extensions_clarfai_exposed = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufBool>, SwiftProtobuf.Google_Protobuf_EnumValueOptions>(
  _protobuf_fieldNumber: 80318,
  fieldName: "clarifai.auth.scope.clarfai_exposed"
)

/// TODO: We have no way of picking extension field numbers within clarifai to guarantee
/// uniqueness.  Note: 50000-99999 are for organizational use (like this)
public let Clarifai_Auth_Scope_Extensions_clarifai_depending_scopes = SwiftProtobuf.MessageExtension<SwiftProtobuf.PackedEnumExtensionField<Clarifai_Auth_Scope_S>, SwiftProtobuf.Google_Protobuf_EnumValueOptions>(
  _protobuf_fieldNumber: 80319,
  fieldName: "clarifai.auth.scope.clarifai_depending_scopes"
)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "clarifai.auth.scope"

extension Clarifai_Auth_Scope_S: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "undef"),
    1: .same(proto: "All"),
    2: .same(proto: "Predict"),
    3: .same(proto: "Search"),
    4: .same(proto: "Inputs_Add"),
    5: .same(proto: "Inputs_Get"),
    7: .same(proto: "Inputs_Patch"),
    8: .same(proto: "Inputs_Delete"),
    9: .same(proto: "Outputs_Patch"),
    10: .same(proto: "Concepts_Add"),
    11: .same(proto: "Concepts_Get"),
    12: .same(proto: "Concepts_Patch"),
    13: .same(proto: "Concepts_Delete"),
    14: .same(proto: "Models_Add"),
    15: .same(proto: "Models_Get"),
    16: .same(proto: "Models_Patch"),
    17: .same(proto: "Models_Delete"),
    18: .same(proto: "Workflows_Add"),
    19: .same(proto: "Workflows_Get"),
    20: .same(proto: "Workflows_Patch"),
    21: .same(proto: "Workflows_Delete"),
    24: .same(proto: "TSNEVisualizations_Add"),
    25: .same(proto: "TSNEVisualizations_Get"),
    26: .same(proto: "Models_Train"),
    27: .same(proto: "Models_Sync"),
    37: .same(proto: "Annotations_Add"),
    38: .same(proto: "Annotations_Get"),
    39: .same(proto: "Annotations_Patch"),
    40: .same(proto: "Annotations_Delete"),
    41: .same(proto: "Collectors_Add"),
    42: .same(proto: "Collectors_Get"),
    43: .same(proto: "Collectors_Delete"),
    44: .same(proto: "Apps_Add"),
    45: .same(proto: "Apps_Get"),
    46: .same(proto: "Apps_Delete"),
    47: .same(proto: "Keys_Add"),
    48: .same(proto: "Keys_Get"),
    49: .same(proto: "Keys_Delete"),
    50: .same(proto: "Collaborators_Get"),
    51: .same(proto: "Collaborators_Add"),
    52: .same(proto: "Collaborators_Delete"),
    53: .same(proto: "Metrics_Get"),
    54: .same(proto: "Metrics_Add"),
    55: .same(proto: "Tasks_Add"),
    56: .same(proto: "Tasks_Get"),
    57: .same(proto: "PasswordPolicies_Add"),
    58: .same(proto: "PasswordPolicies_Get"),
    59: .same(proto: "PasswordPolicies_Delete"),
    63: .same(proto: "Metrics_Delete"),
    67: .same(proto: "LabelOrders_Get"),
    68: .same(proto: "LabelOrders_Add"),
    69: .same(proto: "LabelOrders_Delete"),
    70: .same(proto: "Tasks_Delete"),
    71: .same(proto: "UserFeatureConfigs_Get"),
    96: .same(proto: "WorkflowMetrics_Get"),
    97: .same(proto: "WorkflowMetrics_Add"),
    98: .same(proto: "WorkflowMetrics_Delete"),
    102: .same(proto: "FindDuplicateAnnotationsJobs_Add"),
    103: .same(proto: "FindDuplicateAnnotationsJobs_Get"),
    104: .same(proto: "FindDuplicateAnnotationsJobs_Delete"),
  ]
}

extension Clarifai_Auth_Scope_ScopeList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ScopeList"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "scopes"),
    2: .same(proto: "endpoints"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedEnumField(value: &self.scopes)
      case 2: try decoder.decodeRepeatedStringField(value: &self.endpoints)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.scopes.isEmpty {
      try visitor.visitPackedEnumField(value: self.scopes, fieldNumber: 1)
    }
    if !self.endpoints.isEmpty {
      try visitor.visitRepeatedStringField(value: self.endpoints, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Clarifai_Auth_Scope_ScopeList, rhs: Clarifai_Auth_Scope_ScopeList) -> Bool {
    if lhs.scopes != rhs.scopes {return false}
    if lhs.endpoints != rhs.endpoints {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
