// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import '../global/global_class/api_url.dart';
import '../global/global_variable/enum_variable.dart';
import '../helper/custom_catch.dart';
import '../helper/preferences.dart';
import 'interceptor/authorization_interceptor.dart';
import 'interceptor/content_type_interceptor.dart';




class ApiManager {
  static bool PRIMARY = true;

  static Future<Dio> getDio(
      {bool withoutAuthorizationInterceptor = false}) async {
    String baseUrl;

    if (PRIMARY) {
      baseUrl =
          Preferences.getInstance().getString(SharedPreferenceKey.MAIN_BASE) ??
              ApiUrl.MAIN_BASE;
    } else {
      baseUrl = Preferences.getInstance().getString(
          SharedPreferenceKey.SECONDARY_BASE) ?? ApiUrl.SECONDARY_BASE;
    }

    Dio dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 50),
        receiveTimeout: const Duration(seconds: 30),
        responseDecoder: (responseBytes, options, responseBody) {
          if (responseBody.statusCode == 401) {
            options.responseType = ResponseType.plain;
          }

          return utf8.decode(responseBytes, allowMalformed: true);
        }));

    dio.interceptors.removeImplyContentTypeInterceptor();
    dio.interceptors.add(ContentTypeInterceptor());

    if (!withoutAuthorizationInterceptor) {
      dio.interceptors.add(AuthorizationInterceptor());
    }

    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final HttpClient client = HttpClient(context: SecurityContext(withTrustedRoots: false));

      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;

      return client;
    };

    return dio;
  }

  String handleError(DioException e) {
    if(e.type == DioExceptionType.badResponse) {
      return e.response!.data.toString();
    } else if(e.type == DioExceptionType.connectionError) {
      return "Not Connection";
    }
    return e.message ?? "";
  }

  Future<Response> getTestConnection({bool secondTry = false}) async {
    try {
      Dio dio = await getDio(withoutAuthorizationInterceptor: true);

      Response response = await dio.get(ApiUrl.TEST_CONNECTION);

      return response;
    } on DioException catch (e) {
      if (secondTry) {
        if(e.type == DioExceptionType.badResponse) {
          rethrow;
        } else {
          String message = await CustomCatch.internetCatch();
          throw Exception(message);
        }
      } else {
        PRIMARY = !PRIMARY;

        return getTestConnection(secondTry: true);
      }
    }
  }

  // Example how to use api manager for login
  // Future<Response> postLogin({bool secondTry = false, required LoginRequest loginRequest}) async {
  //   try {
  //     Dio dio = await getDio();
  //
  //     Response response = await dio.post(
  //         ApiUrl.LOGIN,
  //         data: loginRequest
  //     );
  //
  //     print(response);
  //
  //     return response;
  //   } on DioException catch (e) {
  //     if (secondTry) {
  //       String message = handleError(e);
  //
  //       throw FormatException(message);
  //     } else {
  //       PRIMARY = !PRIMARY;
  //
  //       return postLogin(secondTry: true, loginRequest: loginRequest);
  //     }
  //   }
  // }


}
