import 'package:dio/dio.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:clean/core/interface/network_manager.dart';
import 'package:clean/configuration/endpoint_constant.dart';
import 'package:clean/repository/storage_repository.dart';

class DioNetworkImpl extends GetxService implements NetworkManager {
  static final Dio _dio = Dio();
  final StorageRepository _storageRepository = Get.find();
  late InterceptorsWrapper _interceptorsWrapper;

  DioNetworkImpl() {
    _dio.options.baseUrl = Endpoints.API_BASE_URL;
    _interceptorsWrapper = InterceptorsWrapper(
      onRequest:
          (RequestOptions options, RequestInterceptorHandler handler) async {
        String? jwt = _storageRepository.getJwt();
        if (!options.headers.containsKey("Authorization") && jwt != null) {
          options.headers["Authorization"] = "Bearer $jwt";
        }
        return handler.next(options);
      },
      onResponse:
          (Response response, ResponseInterceptorHandler handler) async {
        return handler.next(response);
      },
      onError: (DioError e, ErrorInterceptorHandler handler) async {
        return handler.next(e);
      },
    );
    _dio.interceptors.add(_interceptorsWrapper);
  }

  @override
  Future<Response> get(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool authorization = false,
  }) async {
    if (authorization) _dio.interceptors.add(_interceptorsWrapper);
    final response = await _dio.get(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    return response;
  }

  @override
  Future<Response> post(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    bool authorization = false,
  }) async {
    final response =
        await _dio.post(url, data: body, options: Options(headers: headers));
    return response;
  }

  @override
  Future<Response> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic body,
    bool authorization = false,
  }) async {
    try {
      // print('[API Dio Helper - POST] Server Request: $body');

      final response = await _dio.delete(
        url,
        data: body,
        options: Options(headers: headers),
        queryParameters: queryParameters,
      );

      // final String res = json.encode(response.data);
      // print('[API Dio Helper - POST] Server Response: ' + res);

      return response;
    } on DioError catch (e) {
      // print('[API Dio Helper - POST] Connection Exception => ' + e.message);

      // if (e.response.statusCode == 401) {
      //   Modular.to.pushReplacementNamed(Routers.userLogin);
      // }

      if (e.response?.data != null) throw Exception(e.response!.data);

      throw Exception(e.message);
    }
  }

  @override
  Future<Response> put(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    bool authorization = false,
  }) async {
    try {
      // print('[API Dio Helper - POST] Server Request: $body');

      final response =
          await _dio.put(url, data: body, options: Options(headers: headers));

      // final String res = json.encode(response.data);
      // print('[API Dio Helper - POST] Server Response: ' + res);

      return response;
    } on DioError catch (e) {
      // print('[API Dio Helper - POST] Connection Exception => ' + e.message);

      // if (e.response.statusCode == 401) {
      //   Modular.to.pushReplacementNamed(Routers.userLogin);
      // }

      if (e.response?.data != null) throw Exception(e.response!.data);

      throw Exception(e.message);
    }
  }
}
