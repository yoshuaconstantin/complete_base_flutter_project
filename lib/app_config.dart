import 'package:flutter/material.dart';

import 'core/global/global_variable/enum_variable.dart';


class AppConfig {
  String appName = Environment.dev.value;
  String baseUrl = EnvironmentBaseUrl.dev.value;


  Flavor flavor = Flavor.dev;
  MaterialColor primaryColorEnv = Colors.red;



  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    String appName = "",
    String baseUrl = "",
    MaterialColor primaryColor = Colors.cyan, ///You can change it later
    Flavor flavor = Flavor.dev,
  }) {
    return shared = AppConfig(appName, baseUrl, primaryColor, flavor);
  }

  AppConfig(this.appName, this.baseUrl, this.primaryColorEnv, this.flavor);
}