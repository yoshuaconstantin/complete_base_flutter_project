import 'package:dio/dio.dart';

import '../api/api_manager.dart';
import '../global/global_class/api_url.dart';

class CustomCatch {

  static const String badState = "Status buruk";
  static const String internetError = "Tidak terhubung ke internet";
  static const String serverDown = "Server tidak berjalan";

  static Future<String> internetCatch() async {
    try {
      Dio dio = await ApiManager.getDio();

      Response response = await dio.get("http://www.google.com");
      if (response.statusCode == 200) {
        Response response = await dio.get(ApiUrl.MAIN_BASE);
        Response responseTwo = await dio.get(ApiUrl.SECONDARY_BASE);

        if (response.statusCode == 200 || responseTwo.statusCode == 200) {}
      }
    } on DioException catch (e) {
      if(e.type == DioExceptionType.connectionError) {

        return CustomCatch.internetError;
      } else {
        return CustomCatch.serverDown;
      }
    }

    return "";
  }
}