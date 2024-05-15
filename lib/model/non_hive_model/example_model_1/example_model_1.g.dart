// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_model_1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleModel1 _$ExampleModel1FromJson(Map<String, dynamic> json) =>
    ExampleModel1(
      isString: json['isString'] as String,
      isInt: (json['isInt'] as num).toInt(),
      isDouble: (json['isDouble'] as num).toDouble(),
      isBool: json['isBool'] as bool,
    );

Map<String, dynamic> _$ExampleModel1ToJson(ExampleModel1 instance) =>
    <String, dynamic>{
      'isString': instance.isString,
      'isInt': instance.isInt,
      'isDouble': instance.isDouble,
      'isBool': instance.isBool,
    };
