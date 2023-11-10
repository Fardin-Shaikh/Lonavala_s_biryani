// ignore_for_file: must_be_immutable

part of 'phone_registration_bloc.dart';

/// Represents the state of PhoneRegistration in the application.
class PhoneRegistrationState extends Equatable {
  PhoneRegistrationState({
    this.phoneNumberController,
    this.phoneRegistrationModelObj,
  });

  TextEditingController? phoneNumberController;

  PhoneRegistrationModel? phoneRegistrationModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        phoneRegistrationModelObj,
      ];
  PhoneRegistrationState copyWith({
    TextEditingController? phoneNumberController,
    PhoneRegistrationModel? phoneRegistrationModelObj,
  }) {
    return PhoneRegistrationState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      phoneRegistrationModelObj:
          phoneRegistrationModelObj ?? this.phoneRegistrationModelObj,
    );
  }
}
