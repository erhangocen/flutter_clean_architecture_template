import 'package:flutter/material.dart';
import 'package:student_app/core/widgets/info_snack_bar.dart';
import '../../../../app/base_cubit.dart';
import '../../../../core/globals.dart';
import '../../data/cache/teacher_cache_manager.dart';

import '../../../../product/di/injection.dart';
import '../../../../core/helpers/properties_app.dart';
import '../../data/repositories/teacher_repository.dart';
import '../../../../product/models/response_data.dart';
import '../../domain/models/request/teacher_request.dart';
import '../../domain/models/response/teacher_response.dart';
import 'viewModel/teacher_view_model.dart';

class TeacherCubit extends BaseCubit<TeacherViewModel> {
  TeacherCubit()
      : super(TeacherViewModel(
            teacherList: const [],
            searchList: const [],
            teacherRequest: TeacherRequest(),
            formKey: GlobalKey<FormState>()));

  late final ITeacherRepository _teacherRepository;
  late final TeacherCacheManager _teacherCacheManager;

  bool isFirstTime = getIt<PropertiesApp>().isFirstTime;
  String? error;

  void changeIsLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  late List<TeacherResponse> teacherList;

  void selectTeacher(TeacherResponse? teacher) {
    emit(state.copyWith(selectedTeacher: teacher));
  }

  void initialize() {
    getAllTeachers();
    teacherList = state.teacherList;
  }

  void clearCache() async {
    await _teacherCacheManager.clearAll();
  }

  void searchTeacher(String searchText) {
    final suggession = teacherList.where((element) {
      final search = searchText.toLowerCase();
      final name = element.name.toString().toLowerCase();

      return name.contains(search);
    }).toList();
    emit(state.copyWith(teacherList: suggession));
  }

  Future<void> getAllTeachers() async {
    _teacherRepository = getIt.get<ITeacherRepository>();
    _teacherCacheManager = getIt.get<TeacherCacheManager>();
    await _teacherCacheManager.init();

    if (_teacherCacheManager.getValues()?.isNotEmpty ?? false) {
      if (isFirstTime) {
        getIt<PropertiesApp>().changeFirst();
        await getAllTeachersFromDio();
      } else {
        emit(state.copyWith(teacherList: _teacherCacheManager.getValues()));
      }
    } else {
      await getAllTeachersFromDio();
    }

    emit(state.copyWith(searchList: state.teacherList));
  }

  Future<void> getAllTeachersFromDio() async {
    changeIsLoading();
    List<TeacherResponse>? teachers;

    teachers = await _teacherRepository.getAllTeachers().catchError((e) {
      SnackBar snackBar = InfoSnackBar(
        contentText: e,
        onPressed: () {
          getAllTeachersFromDio();
        },
      );
      snackbarKey.currentState?.showSnackBar(snackBar);
      return null;
    });

    if (teachers != null) {
      await _teacherCacheManager.clearAll();
      await _teacherCacheManager
          .addItems(teachers)
          .then((value) => emit(state.copyWith(teacherList: teachers)));
    }
    changeIsLoading();
  }

  void updateTeacherRequest(TeacherRequest teacherRequest) {
    emit(state.copyWith(teacherRequest: teacherRequest));
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
