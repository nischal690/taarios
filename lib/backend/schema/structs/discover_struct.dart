// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiscoverStruct extends BaseStruct {
  DiscoverStruct({
    String? message,
    List<DataStruct>? data,
    int? page,
    int? pageSize,
    int? totalCount,
    int? totalPages,
  })  : _message = message,
        _data = data,
        _page = page,
        _pageSize = pageSize,
        _totalCount = totalCount,
        _totalPages = totalPages;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "data" field.
  List<DataStruct>? _data;
  List<DataStruct> get data => _data ?? const [];
  set data(List<DataStruct>? val) => _data = val;

  void updateData(Function(List<DataStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

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

  static DiscoverStruct fromMap(Map<String, dynamic> data) => DiscoverStruct(
        message: data['message'] as String?,
        data: getStructList(
          data['data'],
          DataStruct.fromMap,
        ),
        page: castToType<int>(data['page']),
        pageSize: castToType<int>(data['pageSize']),
        totalCount: castToType<int>(data['totalCount']),
        totalPages: castToType<int>(data['totalPages']),
      );

  static DiscoverStruct? maybeFromMap(dynamic data) =>
      data is Map ? DiscoverStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'data': _data?.map((e) => e.toMap()).toList(),
        'page': _page,
        'pageSize': _pageSize,
        'totalCount': _totalCount,
        'totalPages': _totalPages,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
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
      }.withoutNulls;

  static DiscoverStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiscoverStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        data: deserializeStructParam<DataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataStruct.fromSerializableMap,
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
      );

  @override
  String toString() => 'DiscoverStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DiscoverStruct &&
        message == other.message &&
        listEquality.equals(data, other.data) &&
        page == other.page &&
        pageSize == other.pageSize &&
        totalCount == other.totalCount &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([message, data, page, pageSize, totalCount, totalPages]);
}

DiscoverStruct createDiscoverStruct({
  String? message,
  int? page,
  int? pageSize,
  int? totalCount,
  int? totalPages,
}) =>
    DiscoverStruct(
      message: message,
      page: page,
      pageSize: pageSize,
      totalCount: totalCount,
      totalPages: totalPages,
    );
