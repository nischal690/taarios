// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Data2Struct extends BaseStruct {
  Data2Struct({
    String? fromEntityType,
    String? fromEntityName,
    String? content,
  })  : _fromEntityType = fromEntityType,
        _fromEntityName = fromEntityName,
        _content = content;

  // "from_entity_type" field.
  String? _fromEntityType;
  String get fromEntityType => _fromEntityType ?? '';
  set fromEntityType(String? val) => _fromEntityType = val;

  bool hasFromEntityType() => _fromEntityType != null;

  // "from_entity_name" field.
  String? _fromEntityName;
  String get fromEntityName => _fromEntityName ?? '';
  set fromEntityName(String? val) => _fromEntityName = val;

  bool hasFromEntityName() => _fromEntityName != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  static Data2Struct fromMap(Map<String, dynamic> data) => Data2Struct(
        fromEntityType: data['from_entity_type'] as String?,
        fromEntityName: data['from_entity_name'] as String?,
        content: data['content'] as String?,
      );

  static Data2Struct? maybeFromMap(dynamic data) =>
      data is Map ? Data2Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'from_entity_type': _fromEntityType,
        'from_entity_name': _fromEntityName,
        'content': _content,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'from_entity_type': serializeParam(
          _fromEntityType,
          ParamType.String,
        ),
        'from_entity_name': serializeParam(
          _fromEntityName,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static Data2Struct fromSerializableMap(Map<String, dynamic> data) =>
      Data2Struct(
        fromEntityType: deserializeParam(
          data['from_entity_type'],
          ParamType.String,
          false,
        ),
        fromEntityName: deserializeParam(
          data['from_entity_name'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Data2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Data2Struct &&
        fromEntityType == other.fromEntityType &&
        fromEntityName == other.fromEntityName &&
        content == other.content;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fromEntityType, fromEntityName, content]);
}

Data2Struct createData2Struct({
  String? fromEntityType,
  String? fromEntityName,
  String? content,
}) =>
    Data2Struct(
      fromEntityType: fromEntityType,
      fromEntityName: fromEntityName,
      content: content,
    );
