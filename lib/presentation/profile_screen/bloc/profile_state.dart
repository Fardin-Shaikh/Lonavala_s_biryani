// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

/// Represents the state of Profile in the application.
class ProfileState extends Equatable {
  ProfileState({
    this.priceController,
    this.phoneNumberController,
    this.profileModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? phoneNumberController;

  ProfileModel? profileModelObj;

  @override
  List<Object?> get props => [
        priceController,
        phoneNumberController,
        profileModelObj,
      ];
  ProfileState copyWith({
    TextEditingController? priceController,
    TextEditingController? phoneNumberController,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      priceController: priceController ?? this.priceController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
