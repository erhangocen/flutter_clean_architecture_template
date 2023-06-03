import 'package:flutter/material.dart';
import 'package:student_app/core/presentation/base_view_model.dart';
import 'package:student_app/features/teachers/domain/models/request/teacher_request.dart';

@immutable
class AddTeacherViewModel extends BaseViewModel {
  AddTeacherViewModel(
      {isLoading = false, 
        required this.teacherRequest, 
        required this.formKey})
      : super(isLoading: isLoading);

  TeacherRequest teacherRequest;
  GlobalKey<FormState> formKey;

  @override
  List<Object?> get props => [isLoading, teacherRequest, formKey];

  AddTeacherViewModel copyWith(
      {bool? isLoading,
      TeacherRequest? teacherRequest,
      GlobalKey<FormState>? formKey}) {
    return AddTeacherViewModel(
        isLoading: isLoading ?? this.isLoading,
        teacherRequest: teacherRequest ?? this.teacherRequest,
        formKey: formKey ?? this.formKey);
  }
}
