// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:student_app/core/error/error_separator.dart' as _i8;
import 'package:student_app/core/network/dio.dart' as _i10;
import 'package:student_app/core/security/secure_storage.dart' as _i11;
import 'package:student_app/features/login/data/dataAccess/login_service.dart'
    as _i5;
import 'package:student_app/features/login/data/repositories/login_repository.dart'
    as _i7;
import 'package:student_app/features/teachers/data/dataAccess/teacher_service.dart'
    as _i6;
import 'package:student_app/features/teachers/data/repositories/teacher_repository.dart'
    as _i9;

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
    final dioModule = _$DioModule();
    final secureStorageModule = _$SecureStorageModule();
    gh.singleton<_i3.Dio>(dioModule.dio());
    gh.singleton<_i4.FlutterSecureStorage>(secureStorageModule.secureStorage());
    gh.factory<_i5.ILoginService>(() => _i5.LoginManager(gh<_i3.Dio>()));
    gh.factory<_i6.ITeacherService>(() => _i6.TeacherManager(gh<_i3.Dio>()));
    gh.factory<_i7.ILoginRepository>(() => _i7.LoginRepository(
          gh<_i5.ILoginService>(),
          gh<_i8.ErrorSeparator>(),
        ));
    gh.factory<_i9.ITeacherRepository>(() => _i9.TeacherRepository(
          gh<_i6.ITeacherService>(),
          gh<_i8.ErrorSeparator>(),
        ));
    return this;
  }
}

class _$DioModule extends _i10.DioModule {}

class _$SecureStorageModule extends _i11.SecureStorageModule {}
