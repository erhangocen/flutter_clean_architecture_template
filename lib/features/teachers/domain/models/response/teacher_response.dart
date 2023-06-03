import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../../../../../product/constants/hive_constants.dart';
import '../../../../../../../product/models/user/response/user_response.dart';
part 'teacher_response.g.dart';

@JsonSerializable(createToJson: false)
@HiveType(typeId: HiveConstants.teacherHiveId)
class TeacherResponse extends UserResponse {
  @HiveField(3)
  String? department;

  TeacherResponse({super.id, super.name, this.department});

  factory TeacherResponse.fromJson(Map<String, dynamic> json) =>
      _$TeacherResponseFromJson(json);
}
