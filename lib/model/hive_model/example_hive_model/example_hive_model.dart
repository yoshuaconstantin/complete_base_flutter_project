import 'package:hive/hive.dart';

part 'example_hive_model.g.dart';


/// HiveType -> typeId indicate wich id it will be stored to wich means it cannot be same id, if 0 is used then next model should be 1
@HiveType(typeId: 0)
class ExampleHiveModel {
  @HiveField(0)
  final String? isString;
  @HiveField(1)
  final int? isInt;
  @HiveField(2)
  final bool? isBool;
  @HiveField(3)
  final List<dynamic>? isListDynamic;

  ExampleHiveModel({
    this.isString,
    this.isBool,
    this.isInt,
    this.isListDynamic
  });
}