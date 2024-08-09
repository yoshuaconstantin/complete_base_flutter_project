

import 'package:complete_base_flutter_project/core/helper/preferences.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';



import '../global/global_variable/enum_variable.dart';
import 'navigators.dart';

class Generals {
  static void signOut() async {
    if (Preferences.getInstance().contain(SharedPreferenceKey.SESSION_ID)) {
      BuildContext? buildContext = Navigators.navigatorState.currentContext;

      if (buildContext != null) {
        var sharedPreferenceKey = SharedPreferenceKey.values;

        for(var e in sharedPreferenceKey) {
          if(
          e.name == SharedPreferenceKey.DARKMODE.name ||
              e.name == SharedPreferenceKey.MAIN_BASE.name ||
              e.name == SharedPreferenceKey.SECONDARY_BASE.name
          ) {
            continue;
          }

          Preferences.getInstance().remove(e);
        }

        //Navigators.pushAndRemoveAll(buildContext, const LoginPage());
      }
    }
  }

  static Future<PackageInfo> getPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo;
  }
}