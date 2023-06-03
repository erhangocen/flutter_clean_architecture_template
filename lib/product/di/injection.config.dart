// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:student_app/core/dio.dart' as _i7;
import 'package:student_app/core/error/error_separator.dart' as _i6;
import 'package:student_app/features/teachers/data/dataAccess/teacher_service.dart'
    as _i4;
import 'package:student_app/features/teachers/data/repositories/teacher_repository.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Dio>(registerModule.dio());
    gh.factory<_i4.ITeacherService>(() => _i4.TeacherManager(gh<_i3.Dio>()));
    gh.factory<_i5.ITeacherRepository>(() => _i5.TeacherRepository(
          gh<_i4.ITeacherService>(),
          gh<_i6.ErrorSeparator>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i7.RegisterModule {}
