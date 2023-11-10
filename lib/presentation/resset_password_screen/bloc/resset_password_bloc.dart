import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/resetpasswordgrid_item_model.dart';
import 'package:lonavala_s_biryani/presentation/resset_password_screen/models/resset_password_model.dart';
part 'resset_password_event.dart';
part 'resset_password_state.dart';

/// A bloc that manages the state of a RessetPassword according to the event that is dispatched to it.
class RessetPasswordBloc
    extends Bloc<RessetPasswordEvent, RessetPasswordState> {
  RessetPasswordBloc(RessetPasswordState initialState) : super(initialState) {
    on<RessetPasswordInitialEvent>(_onInitialize);
  }

  List<ResetpasswordgridItemModel> fillResetpasswordgridItemList() {
    return [ResetpasswordgridItemModel(one: "1")];
  }

  _onInitialize(
    RessetPasswordInitialEvent event,
    Emitter<RessetPasswordState> emit,
  ) async {
    emit(state.copyWith(passwordController: TextEditingController()));
    emit(state.copyWith(
        ressetPasswordModelObj: state.ressetPasswordModelObj?.copyWith(
            resetpasswordgridItemList: fillResetpasswordgridItemList())));
  }
}
