import 'package:injectable/injectable.dart';

import '../../../../core/error/error_extension.dart';
import '../../../../core/error/error_separator.dart';
import '../../domain/models/response/teacher_response.dart';
import '../dataAccess/teacher_service.dart';
import '../../../../product/models/response_data.dart';

abstract class ITeacherRepository {
  Future<List<TeacherResponse>?> getAllTeachers();
  Future<ResponseData?> addTeacher(Map<String, dynamic> teacherRequest);
}

@Injectable(as: ITeacherRepository)
class TeacherRepository implements ITeacherRepository {
  final ITeacherService _teacherService;
  final ErrorSeparator _errorSeparator;

  TeacherRepository(this._teacherService, this._errorSeparator);

  @override
  Future<List<TeacherResponse>?> getAllTeachers() async {
    return await _teacherService.getAllTeachers().catchError((error) =>
        throw _errorSeparator.createError(error, StackTrace.current).handle());
  }

  @override
  Future<ResponseData?> addTeacher(Map<String, dynamic> teacherRequest) async {
    return await _teacherService.addTeacher(teacherRequest).catchError(
        (error) => throw _errorSeparator
            .createError(error, StackTrace.current)
            .handle());
  }
}
