// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeacherResponseAdapter extends TypeAdapter<TeacherResponse> {
  @override
  final int typeId = 1;

  @override
  TeacherResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TeacherResponse(
      id: fields[0] as String?,
      name: fields[1] as String?,
      department: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TeacherResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(3)
      ..write(obj.department)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeacherResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherResponse _$TeacherResponseFromJson(Map<String, dynamic> json) =>
    TeacherResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      department: json['department'] as String?,
    );
