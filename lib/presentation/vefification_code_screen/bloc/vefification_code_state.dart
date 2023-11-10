// ignore_for_file: must_be_immutable

part of 'vefification_code_bloc.dart';

/// Represents the state of VefificationCode in the application.
class VefificationCodeState extends Equatable {
  VefificationCodeState({
    this.otpController,
    this.vefificationCodeModelObj,
  });

  TextEditingController? otpController;

  VefificationCodeModel? vefificationCodeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        vefificationCodeModelObj,
      ];
  VefificationCodeState copyWith({
    TextEditingController? otpController,
    VefificationCodeModel? vefificationCodeModelObj,
  }) {
    return VefificationCodeState(
      otpController: otpController ?? this.otpController,
      vefificationCodeModelObj:
          vefificationCodeModelObj ?? this.vefificationCodeModelObj,
    );
  }
}
