import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/side_menu_screen/models/side_menu_model.dart';
part 'side_menu_event.dart';
part 'side_menu_state.dart';

/// A bloc that manages the state of a SideMenu according to the event that is dispatched to it.
class SideMenuBloc extends Bloc<SideMenuEvent, SideMenuState> {
  SideMenuBloc(SideMenuState initialState) : super(initialState) {
    on<SideMenuInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SideMenuState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    SideMenuInitialEvent event,
    Emitter<SideMenuState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
  }
}
