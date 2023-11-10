// ignore_for_file: must_be_immutable

part of 'add_new_address_bloc.dart';

/// Represents the state of AddNewAddress in the application.
class AddNewAddressState extends Equatable {
  AddNewAddressState({
    this.fullNameEditTextController,
    this.mobileNumberEditTextController,
    this.streetEditTextController,
    this.addNewAddressModelObj,
  });

  TextEditingController? fullNameEditTextController;

  TextEditingController? mobileNumberEditTextController;

  TextEditingController? streetEditTextController;

  AddNewAddressModel? addNewAddressModelObj;

  @override
  List<Object?> get props => [
        fullNameEditTextController,
        mobileNumberEditTextController,
        streetEditTextController,
        addNewAddressModelObj,
      ];
  AddNewAddressState copyWith({
    TextEditingController? fullNameEditTextController,
    TextEditingController? mobileNumberEditTextController,
    TextEditingController? streetEditTextController,
    AddNewAddressModel? addNewAddressModelObj,
  }) {
    return AddNewAddressState(
      fullNameEditTextController:
          fullNameEditTextController ?? this.fullNameEditTextController,
      mobileNumberEditTextController:
          mobileNumberEditTextController ?? this.mobileNumberEditTextController,
      streetEditTextController:
          streetEditTextController ?? this.streetEditTextController,
      addNewAddressModelObj:
          addNewAddressModelObj ?? this.addNewAddressModelObj,
    );
  }
}
