// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:student_app/product/models/user/request/user_request.dart';

part 'teacher_request.g.dart';

@JsonSerializable(createFactory: false)
class TeacherRequest extends UserRequest {
  String? department;

  TeacherRequest({super.name, this.department});

  Map<String, dynamic> toJson() => _$TeacherRequestToJson(this);

  TeacherRequest copyWith({
    String? name,
    String? department,
  }) {
    return TeacherRequest(
      name: name ?? this.name,
      department: department ?? this.department,
    );
  }
}
