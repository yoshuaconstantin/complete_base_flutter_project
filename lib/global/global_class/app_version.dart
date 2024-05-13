import 'package:package_info_plus/package_info_plus.dart';

import '../../helper/generals.dart';

class AppVersion{

  String versionInfo = '';

  void versionString() async {
    PackageInfo packageInfo = await Generals.getPackageInfo();
    versionInfo = packageInfo.version;
  }

}