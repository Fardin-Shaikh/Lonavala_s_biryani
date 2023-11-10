import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/food_details_screen/models/food_details_model.dart';
part 'food_details_event.dart';
part 'food_details_state.dart';

/// A bloc that manages the state of a FoodDetails according to the event that is dispatched to it.
class FoodDetailsBloc extends Bloc<FoodDetailsEvent, FoodDetailsState> {
  FoodDetailsBloc(FoodDetailsState initialState) : super(initialState) {
    on<FoodDetailsInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<FoodDetailsState> emit,
  ) {
    emit(state.copyWith(choiceName: event.value));
  }

  List<String> fillRadioList() {
    return [];
  }

  _onInitialize(
    FoodDetailsInitialEvent event,
    Emitter<FoodDetailsState> emit,
  ) async {
    emit(state.copyWith(choiceName: ""));
    emit(state.copyWith(
        foodDetailsModelObj:
            state.foodDetailsModelObj?.copyWith(radioList: fillRadioList())));
  }
}
