import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/review_resturent_screen/models/review_resturent_model.dart';
part 'review_resturent_event.dart';
part 'review_resturent_state.dart';

/// A bloc that manages the state of a ReviewResturent according to the event that is dispatched to it.
class ReviewResturentBloc
    extends Bloc<ReviewResturentEvent, ReviewResturentState> {
  ReviewResturentBloc(ReviewResturentState initialState) : super(initialState) {
    on<ReviewResturentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReviewResturentInitialEvent event,
    Emitter<ReviewResturentState> emit,
  ) async {}
}
