import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/phone_registration_screen/models/phone_registration_model.dart';
part 'phone_registration_event.dart';
part 'phone_registration_state.dart';

/// A bloc that manages the state of a PhoneRegistration according to the event that is dispatched to it.
class PhoneRegistrationBloc
    extends Bloc<PhoneRegistrationEvent, PhoneRegistrationState> {
  PhoneRegistrationBloc(PhoneRegistrationState initialState)
      : super(initialState) {
    on<PhoneRegistrationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PhoneRegistrationInitialEvent event,
    Emitter<PhoneRegistrationState> emit,
  ) async {
    emit(state.copyWith(phoneNumberController: TextEditingController()));
  }
}
