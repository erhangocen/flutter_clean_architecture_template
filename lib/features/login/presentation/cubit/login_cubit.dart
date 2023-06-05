import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:student_app/app/base_cubit.dart';
import 'package:student_app/features/login/data/repositories/login_repository.dart';
import 'package:student_app/features/login/domain/models/request/login_request.dart';
import 'package:student_app/features/login/presentation/cubit/view_model/login_view_model.dart';
import 'package:student_app/product/di/injection.dart';

class LoginCubit extends BaseCubit<LoginViewModel> {
  LoginCubit() : super(LoginViewModel(isLoading: false));

  late final ILoginRepository _loginRepository;
  late final FlutterSecureStorage _flutterSecureStorage;

  void init() {
    _loginRepository = getIt.get<ILoginRepository>();
    _flutterSecureStorage = getIt.get<FlutterSecureStorage>();
  }

  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<void> login() async {
    changeLoading();
    final response = await _loginRepository.login(LoginRequest(id: "sdasdasd"));

    await _flutterSecureStorage.write(
        key: "token", value: response?.token.toString());

    await _flutterSecureStorage.write(
        key: "refresh", value: response?.refresh.toString());

    String? deneme = await _flutterSecureStorage.read(key: "token");
    print(deneme);

    emit(state.copyWith(token: deneme ?? "asd"));
    changeLoading();
  }
}
