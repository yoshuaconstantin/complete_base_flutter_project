import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

import '../../model/hive_model/example_hive_model/example_hive_model.dart';


//This class if required for setting up HIVE database and adapter in order to make HIVE work
class SettingHive {
  static Future init() async {
    await Hive.initFlutter();
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive
      ..init(appDocumentDir.path)
      ..registerAdapter(ExampleHiveModelAdapter());

  }
}
