import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/rating_screen/models/rating_model.dart';
part 'rating_event.dart';
part 'rating_state.dart';

/// A bloc that manages the state of a Rating according to the event that is dispatched to it.
class RatingBloc extends Bloc<RatingEvent, RatingState> {
  RatingBloc(RatingState initialState) : super(initialState) {
    on<RatingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RatingInitialEvent event,
    Emitter<RatingState> emit,
  ) async {
    emit(state.copyWith(reviewPromptController: TextEditingController()));
  }
}
