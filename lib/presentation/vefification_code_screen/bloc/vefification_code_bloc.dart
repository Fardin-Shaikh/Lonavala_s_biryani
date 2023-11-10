import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/verificationcode_item_model.dart';
import 'package:lonavala_s_biryani/presentation/vefification_code_screen/models/vefification_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'vefification_code_event.dart';
part 'vefification_code_state.dart';

/// A bloc that manages the state of a VefificationCode according to the event that is dispatched to it.
class VefificationCodeBloc
    extends Bloc<VefificationCodeEvent, VefificationCodeState>
    with CodeAutoFill {
  VefificationCodeBloc(VefificationCodeState initialState)
      : super(initialState) {
    on<VefificationCodeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<VefificationCodeState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  List<VerificationcodeItemModel> fillVerificationcodeItemList() {
    return [VerificationcodeItemModel(one: "1")];
  }

  _onInitialize(
    VefificationCodeInitialEvent event,
    Emitter<VefificationCodeState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
    emit(state.copyWith(
        vefificationCodeModelObj: state.vefificationCodeModelObj?.copyWith(
            verificationcodeItemList: fillVerificationcodeItemList())));
  }
}
