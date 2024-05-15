import 'package:json_annotation/json_annotation.dart';

part 'example_model_1.g.dart';

/// JsonSerializable is good for code Efficiency, Reduced Errors, Maintainability. see how to use that below..
/// For convert into Json nor decode Json just only use ExampleModel1.toJson or .fromJson
@JsonSerializable()
class ExampleModel1{

  final String isString;
  final int isInt;
  final double isDouble;
  final bool isBool;

  ExampleModel1({
  required this.isString,
  required this.isInt,
  required this.isDouble,
  required this.isBool
  });

  factory ExampleModel1.fromJson(Map<String, dynamic> json) => _$ExampleModel1FromJson(json);

  Map<String, dynamic> toJson() => _$ExampleModel1ToJson(this);
}