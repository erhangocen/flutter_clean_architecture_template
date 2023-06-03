import 'package:flutter/material.dart';
import 'package:student_app/features/teachers/presentation/cubit/viewModel/add_teacher_view_model.dart';
import '../../../../app/base_cubit.dart';
import '../../../../product/di/injection.dart';
import '../../data/repositories/teacher_repository.dart';
import '../../../../product/models/response_data.dart';
import '../../domain/models/request/teacher_request.dart';

class TeacherAddCubit extends BaseCubit<AddTeacherViewModel> {
  TeacherAddCubit()
      : super(AddTeacherViewModel(
            teacherRequest: TeacherRequest(),
            formKey: GlobalKey<FormState>())) {
    init();
  }

  late final ITeacherRepository _teacherRepository;

  Future<void> init() async {
    _teacherRepository = getIt.get<ITeacherRepository>();
  }

  void changeIsLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  void updateTeacherRequest(TeacherRequest teacherRequest) {
    emit(state.copyWith(teacherRequest: teacherRequest));
    print(state.teacherRequest.toJson());
  }

  Future<void> addTeacher() async {
    changeIsLoading();
    state.formKey.currentState!.save();
    ResponseData? response =
        await _teacherRepository.addTeacher(state.teacherRequest.toJson());
    print(response);
    changeIsLoading();
    /* inspect(state.teacherRequest.toJson()); */
  }
}