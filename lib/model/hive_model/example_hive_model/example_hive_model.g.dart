// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExampleHiveModelAdapter extends TypeAdapter<ExampleHiveModel> {
  @override
  final int typeId = 0;

  @override
  ExampleHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleHiveModel(
      isString: fields[0] as String?,
      isBool: fields[2] as bool?,
      isInt: fields[1] as int?,
      isListDynamic: (fields[3] as List?)?.cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExampleHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.isString)
      ..writeByte(1)
      ..write(obj.isInt)
      ..writeByte(2)
      ..write(obj.isBool)
      ..writeByte(3)
      ..write(obj.isListDynamic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExampleHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
