import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/add_new_address_screen/models/add_new_address_model.dart';
part 'add_new_address_event.dart';
part 'add_new_address_state.dart';

/// A bloc that manages the state of a AddNewAddress according to the event that is dispatched to it.
class AddNewAddressBloc extends Bloc<AddNewAddressEvent, AddNewAddressState> {
  AddNewAddressBloc(AddNewAddressState initialState) : super(initialState) {
    on<AddNewAddressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddNewAddressInitialEvent event,
    Emitter<AddNewAddressState> emit,
  ) async {
    emit(state.copyWith(
        fullNameEditTextController: TextEditingController(),
        mobileNumberEditTextController: TextEditingController(),
        streetEditTextController: TextEditingController()));
  }
}
