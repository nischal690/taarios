// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsStruct extends BaseStruct {
  CommentsStruct({
    String? message,
    int? page,
    int? pageSize,
    int? totalCount,
    int? totalPages,
    List<Data2Struct>? data,
  })  : _message = message,
        _page = page,
        _pageSize = pageSize,
        _totalCount = totalCount,
        _totalPages = totalPages,
        _data = data;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "page" field.
  int? _page;
  int get page => _page ?? 0;
  set page(int? val) => _page = val;

  void incrementPage(int amount) => page = page + amount;

  bool hasPage() => _page != null;

  // "pageSize" field.
  int? _pageSize;
  int get pageSize => _pageSize ?? 0;
  set pageSize(int? val) => _pageSize = val;

  void incrementPageSize(int amount) => pageSize = pageSize + amount;

  bool hasPageSize() => _pageSize != null;

  // "totalCount" field.
  int? _totalCount;
  int get totalCount => _totalCount ?? 0;
  set totalCount(int? val) => _totalCount = val;

  void incrementTotalCount(int amount) => totalCount = totalCount + amount;

  bool hasTotalCount() => _totalCount != null;

  // "totalPages" field.
  int? _totalPages;
  int get totalPages => _totalPages ?? 0;
  set totalPages(int? val) => _totalPages = val;

  void incrementTotalPages(int amount) => totalPages = totalPages + amount;

  bool hasTotalPages() => _totalPages != null;

  // "data" field.
  List<Data2Struct>? _data;
  List<Data2Struct> get data => _data ?? const [];
  set data(List<Data2Struct>? val) => _data = val;

  void updateData(Function(List<Data2Struct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static CommentsStruct fromMap(Map<String, dynamic> data) => CommentsStruct(
        message: data['message'] as String?,
        page: castToType<int>(data['page']),
        pageSize: castToType<int>(data['pageSize']),
        totalCount: castToType<int>(data['totalCount']),
        totalPages: castToType<int>(data['totalPages']),
        data: getStructList(
          data['data'],
          Data2Struct.fromMap,
        ),
      );

  static CommentsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CommentsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'page': _page,
        'pageSize': _pageSize,
        'totalCount': _totalCount,
        'totalPages': _totalPages,
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'page': serializeParam(
          _page,
          ParamType.int,
        ),
        'pageSize': serializeParam(
          _pageSize,
          ParamType.int,
        ),
        'totalCount': serializeParam(
          _totalCount,
          ParamType.int,
        ),
        'totalPages': serializeParam(
          _totalPages,
          ParamType.int,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CommentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommentsStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        page: deserializeParam(
          data['page'],
          ParamType.int,
          false,
        ),
        pageSize: deserializeParam(
          data['pageSize'],
          ParamType.int,
          false,
        ),
        totalCount: deserializeParam(
          data['totalCount'],
          ParamType.int,
          false,
        ),
        totalPages: deserializeParam(
          data['totalPages'],
          ParamType.int,
          false,
        ),
        data: deserializeStructParam<Data2Struct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: Data2Struct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CommentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CommentsStruct &&
        message == other.message &&
        page == other.page &&
        pageSize == other.pageSize &&
        totalCount == other.totalCount &&
        totalPages == other.totalPages &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([message, page, pageSize, totalCount, totalPages, data]);
}

CommentsStruct createCommentsStruct({
  String? message,
  int? page,
  int? pageSize,
  int? totalCount,
  int? totalPages,
}) =>
    CommentsStruct(
      message: message,
      page: page,
      pageSize: pageSize,
      totalCount: totalCount,
      totalPages: totalPages,
    );
