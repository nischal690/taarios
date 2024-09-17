// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FollowStruct extends BaseStruct {
  FollowStruct({
    String? message,
    String? data,
  })  : _message = message,
        _data = data;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  static FollowStruct fromMap(Map<String, dynamic> data) => FollowStruct(
        message: data['message'] as String?,
        data: data['data'] as String?,
      );

  static FollowStruct? maybeFromMap(dynamic data) =>
      data is Map ? FollowStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'data': _data,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
        ),
      }.withoutNulls;

  static FollowStruct fromSerializableMap(Map<String, dynamic> data) =>
      FollowStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FollowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FollowStruct &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([message, data]);
}

FollowStruct createFollowStruct({
  String? message,
  String? data,
}) =>
    FollowStruct(
      message: message,
      data: data,
    );
