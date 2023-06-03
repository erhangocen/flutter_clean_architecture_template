import 'package:hive_flutter/adapters.dart';
import 'package:student_app/core/cache/response_cache_manager.dart';
import 'package:student_app/features/teachers/domain/models/response/teacher_response.dart';
import '../../../../product/constants/hive_constants.dart';
import '../../../../core/cache/cache_enums.dart';

class TeacherCacheManager extends ResponseCacheManager<TeacherResponse> {
  TeacherCacheManager() : super(CacheEnums.teachers.name);

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(HiveConstants.teacherHiveId)) {
      Hive.registerAdapter(TeacherResponseAdapter());
    }
  }
}
