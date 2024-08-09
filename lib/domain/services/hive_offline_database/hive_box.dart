import 'package:hive/hive.dart';


///**Untessted method of hive box**
///
///How it works? here is a simple explanation:
///
///Hive.openBox(dbName): We open a database data with given database name
///
///box.put(key,data): We store data into a database with giving key(pointer)
///
///box.delete(key): We delete a single data from database by giving it's key
///
class HiveBox{

  ///Get hive database by giving a hive database name and hive database model, example:
  ///ExampleHiveDBModel exampleDb = getHiveDatabase('exampleDbName', ExampleHiveDBModel)
  Future<dynamic> getHiveDatabase<T>(String dbName, T dbModel) async {
    var box = await Hive.openBox(dbName) as T;

    return box;
  }

  ///Input some data into hive database by giving a hive database name, hive key (pointer) and it's data. Example:
  ///await inputDataToHiveDatabase('eampleDbName', 'exampleKey', exampleStoredDataDB)
  Future<dynamic> inputDataToHiveDatabase(String dbName, String key, dynamic data) async {
    var box = await Hive.openBox(dbName);

    try{
      box.put(key, data);
    }catch (e){
      return null;
    }
  }

  ///Delete some single data from hive database with a given hive Database Name and it's key. Example:
  ///await deleteSingleDataFromHiveDatabase('exampleDbName', 'key')
  Future<bool> deleteSingleDataFromHiveDatabase(String dbName, String key) async {
    final box = await Hive.openBox('branchData');

    try{
      await box.delete(key);
      return true;
    }catch (e){
      return false;
    }
  }

}