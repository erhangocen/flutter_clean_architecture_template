import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:student_app/features/teachers/domain/models/request/teacher_request.dart';
import '../../../../product/models/response_data.dart';
import '../../domain/models/response/teacher_response.dart';

part 'teacher_service.g.dart';

abstract class ITeacherService {
  Future<List<TeacherResponse>?> getAllTeachers();
  Future<ResponseData?> addTeacher(TeacherRequest teacher);
}

@RestApi()
@Injectable(as: ITeacherService)
abstract class TeacherManager implements ITeacherService {
  @factoryMethod
  factory TeacherManager(Dio dio) => _TeacherManager(dio);

  @override
  @GET("/teachers/getAll")
  Future<List<TeacherResponse>?> getAllTeachers();

  @override
  @POST("/teachers/add")
  Future<ResponseData?> addTeacher(@Body() TeacherRequest teacher);
}
