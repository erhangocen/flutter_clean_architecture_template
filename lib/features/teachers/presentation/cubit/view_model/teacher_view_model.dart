import 'package:flutter/material.dart';
import 'package:student_app/core/presentation/base_view_model.dart';
import '../../../domain/models/request/teacher_request.dart';
import '../../../domain/models/response/teacher_response.dart';

@immutable
class TeacherViewModel extends BaseViewModel {
  TeacherViewModel(
      {isLoading = false,
      required this.teacherList,
      required this.searchList,
      required this.teacherRequest,
      required this.formKey,
      this.selectedTeacher,
      this.error})
      : super(isLoading: isLoading);

  List<TeacherResponse> teacherList;
  List<TeacherResponse> searchList;
  TeacherRequest teacherRequest;
  TeacherResponse? selectedTeacher;
  GlobalKey<FormState> formKey;
  String? error;

  @override
  List<Object?> get props => [
        isLoading,
        teacherList,
        searchList,
        teacherRequest,
        formKey,
        selectedTeacher,
        error
      ];

  TeacherViewModel copyWith(
      {bool? isLoading,
      List<TeacherResponse>? teacherList,
      List<TeacherResponse>? searchList,
      TeacherRequest? teacherRequest,
      GlobalKey<FormState>? formKey,
      TeacherResponse? selectedTeacher,
      String? error}) {
    return TeacherViewModel(
      isLoading: isLoading ?? this.isLoading,
      teacherList: teacherList ?? this.teacherList,
      searchList: searchList ?? this.searchList,
      teacherRequest: teacherRequest ?? this.teacherRequest,
      formKey: formKey ?? this.formKey,
      selectedTeacher: selectedTeacher ?? this.selectedTeacher,
      error: error ?? this.error,
    );
  }
}
