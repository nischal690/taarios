// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatsStruct extends BaseStruct {
  StatsStruct({
    int? likeCount,
    int? commentCount,
    UserActionsStruct? userActions,
  })  : _likeCount = likeCount,
        _commentCount = commentCount,
        _userActions = userActions;

  // "likeCount" field.
  int? _likeCount;
  int get likeCount => _likeCount ?? 0;
  set likeCount(int? val) => _likeCount = val;

  void incrementLikeCount(int amount) => likeCount = likeCount + amount;

  bool hasLikeCount() => _likeCount != null;

  // "commentCount" field.
  int? _commentCount;
  int get commentCount => _commentCount ?? 0;
  set commentCount(int? val) => _commentCount = val;

  void incrementCommentCount(int amount) =>
      commentCount = commentCount + amount;

  bool hasCommentCount() => _commentCount != null;

  // "userActions" field.
  UserActionsStruct? _userActions;
  UserActionsStruct get userActions => _userActions ?? UserActionsStruct();
  set userActions(UserActionsStruct? val) => _userActions = val;

  void updateUserActions(Function(UserActionsStruct) updateFn) {
    updateFn(_userActions ??= UserActionsStruct());
  }

  bool hasUserActions() => _userActions != null;

  static StatsStruct fromMap(Map<String, dynamic> data) => StatsStruct(
        likeCount: castToType<int>(data['likeCount']),
        commentCount: castToType<int>(data['commentCount']),
        userActions: UserActionsStruct.maybeFromMap(data['userActions']),
      );

  static StatsStruct? maybeFromMap(dynamic data) =>
      data is Map ? StatsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'likeCount': _likeCount,
        'commentCount': _commentCount,
        'userActions': _userActions?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'likeCount': serializeParam(
          _likeCount,
          ParamType.int,
        ),
        'commentCount': serializeParam(
          _commentCount,
          ParamType.int,
        ),
        'userActions': serializeParam(
          _userActions,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static StatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      StatsStruct(
        likeCount: deserializeParam(
          data['likeCount'],
          ParamType.int,
          false,
        ),
        commentCount: deserializeParam(
          data['commentCount'],
          ParamType.int,
          false,
        ),
        userActions: deserializeStructParam(
          data['userActions'],
          ParamType.DataStruct,
          false,
          structBuilder: UserActionsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'StatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatsStruct &&
        likeCount == other.likeCount &&
        commentCount == other.commentCount &&
        userActions == other.userActions;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([likeCount, commentCount, userActions]);
}

StatsStruct createStatsStruct({
  int? likeCount,
  int? commentCount,
  UserActionsStruct? userActions,
}) =>
    StatsStruct(
      likeCount: likeCount,
      commentCount: commentCount,
      userActions: userActions ?? UserActionsStruct(),
    );
