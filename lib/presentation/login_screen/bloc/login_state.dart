// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.emailFieldController,
    this.priceFieldController,
    this.passwordFieldController,
    this.isShowPassword = true,
    this.loginModelObj,
  });

  TextEditingController? emailFieldController;

  TextEditingController? priceFieldController;

  TextEditingController? passwordFieldController;

  LoginModel? loginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailFieldController,
        priceFieldController,
        passwordFieldController,
        isShowPassword,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? emailFieldController,
    TextEditingController? priceFieldController,
    TextEditingController? passwordFieldController,
    bool? isShowPassword,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailFieldController: emailFieldController ?? this.emailFieldController,
      priceFieldController: priceFieldController ?? this.priceFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
