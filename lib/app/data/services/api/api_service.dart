import 'dart:async';

import 'package:get/get.dart';
import 'package:getx/app/data/services/api/error_handler.dart';

import 'constance.dart';

typedef VoidCallback = Future<Response>? Function();

class ApiService extends GetConnect {
  @override
  void onInit() async {
    httpClient.baseUrl = BASE_URI;
    httpClient.defaultContentType = CONTENT_TYPE;
    httpClient.addAuthenticator<dynamic>((request) {
      request.headers['Authorization'] = API_KEY;
      return request;
    });
  }

  Future<Response?> postData({
    required String endPoint,
    required FormData data,
  }) async {
    return sendRequest(request: () async {
      return await post(endPoint, data);
    });
  }

  Future<Response?> deleteData({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    return sendRequest(request: () async {
      return await delete(endPoint, query: query);
    });
  }

  Future<Response?> getData({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    return sendRequest(request: () async {
      return await get(endPoint, query: query);
    });
  }

  Future<Response?> sendRequest({
    required VoidCallback request,
  }) async {
    try {
      final result = await request();
      return errorHandler(result!);
    } on Exception catch (exception) {
      exceptionHandler(exception);
    }
    return null;
  }
}
