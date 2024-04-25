// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diabet.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiabetHiveTypeAdapter extends TypeAdapter<DiabetHiveType> {
  @override
  final int typeId = 0;

  @override
  DiabetHiveType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiabetHiveType(
      id: fields[0] as int?,
      dateTime: fields[1] as DateTime?,
      shortInsulin: fields[2] as double?,
      longInsulin: fields[3] as double?,
      sugar: fields[4] as double?,
      note: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DiabetHiveType obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.shortInsulin)
      ..writeByte(3)
      ..write(obj.longInsulin)
      ..writeByte(4)
      ..write(obj.sugar)
      ..writeByte(5)
      ..write(obj.note);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiabetHiveTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
