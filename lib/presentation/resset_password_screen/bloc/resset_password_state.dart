// ignore_for_file: must_be_immutable

part of 'resset_password_bloc.dart';

/// Represents the state of RessetPassword in the application.
class RessetPasswordState extends Equatable {
  RessetPasswordState({
    this.passwordController,
    this.ressetPasswordModelObj,
  });

  TextEditingController? passwordController;

  RessetPasswordModel? ressetPasswordModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        ressetPasswordModelObj,
      ];
  RessetPasswordState copyWith({
    TextEditingController? passwordController,
    RessetPasswordModel? ressetPasswordModelObj,
  }) {
    return RessetPasswordState(
      passwordController: passwordController ?? this.passwordController,
      ressetPasswordModelObj:
          ressetPasswordModelObj ?? this.ressetPasswordModelObj,
    );
  }
}
