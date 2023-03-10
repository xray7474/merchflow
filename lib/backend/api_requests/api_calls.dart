import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String baseUrl = 'https://x8ki-letl-twmt.n7.xano.io/api:l5VkNmwk:v1/';
  static Map<String, String> headers = {};
  static SignupCall signupCall = SignupCall();
  static LoginCall loginCall = LoginCall();
  static GetUserDataCall getUserDataCall = GetUserDataCall();
}

class SignupCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? name = '',
  }) {
    final body = '''
{
  "name": "${name}",
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl: '${AuthenticationGroup.baseUrl}auth/signup',
      callType: ApiCallType.POST,
      headers: {
        ...AuthenticationGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic accessToken(dynamic response) => getJsonField(
        response,
        r'''$.authToken''',
      );
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${AuthenticationGroup.baseUrl}auth/login',
      callType: ApiCallType.POST,
      headers: {
        ...AuthenticationGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic accessToken(dynamic response) => getJsonField(
        response,
        r'''$.authToken''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
}

class GetUserDataCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserData',
      apiUrl: '${AuthenticationGroup.baseUrl}auth/me',
      callType: ApiCallType.GET,
      headers: {
        ...AuthenticationGroup.headers,
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Authentication Group Code

/// Start Storage Group Code

class StorageGroup {
  static String baseUrl = 'https://fjuqhkcsuncjjbllaepn.supabase.co/storage/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZqdXFoa2NzdW5jampibGxhZXBuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzczNDk1MDIsImV4cCI6MTk5MjkyNTUwMn0.r3yboEHYV7FFtgwTaaxjnEpUBV0X9mBp-CaJQhkM-TM',
  };
}

/// End Storage Group Code

/// Start DB Functions Group Code

class DBFunctionsGroup {
  static String baseUrl = 'https://fjuqhkcsuncjjbllaepn.supabase.co';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZqdXFoa2NzdW5jampibGxhZXBuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzczNDk1MDIsImV4cCI6MTk5MjkyNTUwMn0.r3yboEHYV7FFtgwTaaxjnEpUBV0X9mBp-CaJQhkM-TM',
  };
}

/// End DB Functions Group Code

class GetObjectListCall {
  static Future<ApiCallResponse> call({
    String? userApiId = 'o5215MSLbHceC2Ay2BsaXggmx992',
    String? searchString = ' ',
  }) {
    final body = '''
{
  "prefix": "${userApiId}/uploads/",
  "limit": 10,
  "offset": 0,
  "sortBy": {
    "column": "name",
    "order": "asc"
  },
  "search": "${searchString}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getObjectList',
      apiUrl:
          'https://fjuqhkcsuncjjbllaepn.supabase.co/storage/v1/object/list/images',
      callType: ApiCallType.POST,
      headers: {
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZqdXFoa2NzdW5jampibGxhZXBuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzczNDk1MDIsImV4cCI6MTk5MjkyNTUwMn0.r3yboEHYV7FFtgwTaaxjnEpUBV0X9mBp-CaJQhkM-TM',
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic returnSupa(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
}

class DownloadCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'download',
      apiUrl: 'https://fjuqhkcsuncjjbllaepn.supabase.co/storage/v1/bucket',
      callType: ApiCallType.GET,
      headers: {
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZqdXFoa2NzdW5jampibGxhZXBuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzczNDk1MDIsImV4cCI6MTk5MjkyNTUwMn0.r3yboEHYV7FFtgwTaaxjnEpUBV0X9mBp-CaJQhkM-TM',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic test(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
