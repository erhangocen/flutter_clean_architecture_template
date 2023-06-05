import '../../../../../core/presentation/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  LoginViewModel({super.isLoading = false, this.token});

  String? token;

  @override
  List<Object?> get props => [isLoading, token];

  LoginViewModel copyWith({bool? isLoading, String? token}) {
    return LoginViewModel(
      isLoading: isLoading ?? this.isLoading,
      token: token ?? this.token,
    );
  }
}
