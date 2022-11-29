import 'package:dio/dio.dart' show Response;

abstract class NetworkManager {
  Future<Response> get(String url,
      {Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      bool authorization = false});

  Future<Response> post(String url,
      {Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      dynamic body,
      bool authorization = false});

  Future<Response> put(String url,
      {Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      dynamic body,
      bool authorization = false});

  Future<Response> delete(String url,
      {Map<String, dynamic>? headers,
      dynamic body,
      Map<String, dynamic>? queryParameters,
      bool authorization = false});
}
