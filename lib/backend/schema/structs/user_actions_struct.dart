// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserActionsStruct extends BaseStruct {
  UserActionsStruct({
    bool? isFollowing,
    bool? hasLiked,
  })  : _isFollowing = isFollowing,
        _hasLiked = hasLiked;

  // "isFollowing" field.
  bool? _isFollowing;
  bool get isFollowing => _isFollowing ?? false;
  set isFollowing(bool? val) => _isFollowing = val;

  bool hasIsFollowing() => _isFollowing != null;

  // "hasLiked" field.
  bool? _hasLiked;
  bool get hasLiked => _hasLiked ?? false;
  set hasLiked(bool? val) => _hasLiked = val;

  bool hasHasLiked() => _hasLiked != null;

  static UserActionsStruct fromMap(Map<String, dynamic> data) =>
      UserActionsStruct(
        isFollowing: data['isFollowing'] as bool?,
        hasLiked: data['hasLiked'] as bool?,
      );

  static UserActionsStruct? maybeFromMap(dynamic data) => data is Map
      ? UserActionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isFollowing': _isFollowing,
        'hasLiked': _hasLiked,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isFollowing': serializeParam(
          _isFollowing,
          ParamType.bool,
        ),
        'hasLiked': serializeParam(
          _hasLiked,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserActionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserActionsStruct(
        isFollowing: deserializeParam(
          data['isFollowing'],
          ParamType.bool,
          false,
        ),
        hasLiked: deserializeParam(
          data['hasLiked'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserActionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserActionsStruct &&
        isFollowing == other.isFollowing &&
        hasLiked == other.hasLiked;
  }

  @override
  int get hashCode => const ListEquality().hash([isFollowing, hasLiked]);
}

UserActionsStruct createUserActionsStruct({
  bool? isFollowing,
  bool? hasLiked,
}) =>
    UserActionsStruct(
      isFollowing: isFollowing,
      hasLiked: hasLiked,
    );
