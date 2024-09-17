import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start taarapi Group Code

class TaarapiGroup {
  static String getBaseUrl({
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) =>
      'http://api.taar.in';
  static Map<String, String> headers = {
    'Authorization': '[auth_token]',
  };
  static DiscoverCall discoverCall = DiscoverCall();
  static LocationCall locationCall = LocationCall();
  static FollowCall followCall = FollowCall();
  static LikeCall likeCall = LikeCall();
  static CommentCall commentCall = CommentCall();
  static UnlikeCall unlikeCall = UnlikeCall();
  static RsvpCall rsvpCall = RsvpCall();
  static UnfollowCall unfollowCall = UnfollowCall();
  static CommentlistCall commentlistCall = CommentlistCall();
  static EventdetailsCall eventdetailsCall = EventdetailsCall();
}

class DiscoverCall {
  Future<ApiCallResponse> call({
    int? page,
    int? pageSize,
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'discover',
      apiUrl: '$baseUrl/internal/event/discover',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'page': page,
        'page_size': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LocationCall {
  Future<ApiCallResponse> call({
    double? latitude,
    double? longitude,
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "location": {
    "latitude": $latitude,
    "longitude": $longitude
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'location',
      apiUrl: '$baseUrl/internal/user',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FollowCall {
  Future<ApiCallResponse> call({
    String? maskId = '',
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'follow',
      apiUrl: '$baseUrl/internal/event/follow/$maskId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LikeCall {
  Future<ApiCallResponse> call({
    String? maskId = '',
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'like',
      apiUrl: '$baseUrl/internal/event/like/$maskId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CommentCall {
  Future<ApiCallResponse> call({
    String? content = '',
    String? maskid = '',
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "Content": "$content"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'comment',
      apiUrl: '$baseUrl/internal/event/comment/$maskid',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UnlikeCall {
  Future<ApiCallResponse> call({
    String? maskId = '',
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'unlike',
      apiUrl: '$baseUrl/internal/event/unlike/$maskId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RsvpCall {
  Future<ApiCallResponse> call({
    String? maskid = '',
    int? quantity,
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "qty": $quantity
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RSVP',
      apiUrl: '$baseUrl/internal/event/book/$maskid',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UnfollowCall {
  Future<ApiCallResponse> call({
    String? maskId = '',
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'unfollow',
      apiUrl: '$baseUrl/internal/event/unfollow/$maskId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CommentlistCall {
  Future<ApiCallResponse> call({
    int? pageSize,
    int? page,
    String? maskId = '',
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'commentlist',
      apiUrl: '$baseUrl/internal/event/comment/$maskId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'page': page,
        'page size': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EventdetailsCall {
  Future<ApiCallResponse> call({
    String? maskedid = '',
    String? authToken = '65e5de46-f3f5-41d3-9649-cf0448ad201f',
  }) async {
    final baseUrl = TaarapiGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'eventdetails',
      apiUrl: '$baseUrl/internal/event/$maskedid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End taarapi Group Code

class FssCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'fss',
      apiUrl: 'http://api.taar.in/internal/event/unlike/F9OKL2Q',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '6428cf8d-4450-45a4-8e81-ff140ee3b8a9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
