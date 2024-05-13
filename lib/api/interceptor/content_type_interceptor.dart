import 'package:dio/dio.dart';

class ContentTypeInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.contentType == null) {
      final dynamic data = options.data;
      final String? contentType;
      if (data is FormData) {
        contentType = Headers.multipartFormDataContentType;
      } else if (data is Map) {
        contentType = Headers.formUrlEncodedContentType;
      } else if (data != null || data is String) {
        contentType = Headers.jsonContentType;
      } else {
        contentType = null;
      }
      options.contentType = contentType;
    }
    handler.next(options);
  }
}