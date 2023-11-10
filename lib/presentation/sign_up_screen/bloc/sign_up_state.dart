// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.fullNameEditTextController,
    this.emailEditTextController,
    this.emailPriceEditTextController,
    this.passwordEditTextController,
    this.isShowPassword = true,
    this.signUpModelObj,
  });

  TextEditingController? fullNameEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? emailPriceEditTextController;

  TextEditingController? passwordEditTextController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        fullNameEditTextController,
        emailEditTextController,
        emailPriceEditTextController,
        passwordEditTextController,
        isShowPassword,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? fullNameEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? emailPriceEditTextController,
    TextEditingController? passwordEditTextController,
    bool? isShowPassword,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      fullNameEditTextController:
          fullNameEditTextController ?? this.fullNameEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      emailPriceEditTextController:
          emailPriceEditTextController ?? this.emailPriceEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
