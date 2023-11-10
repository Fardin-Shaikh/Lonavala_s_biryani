import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/my_orders_upcoming_page/models/my_orders_upcoming_model.dart';
part 'my_orders_upcoming_event.dart';
part 'my_orders_upcoming_state.dart';

/// A bloc that manages the state of a MyOrdersUpcoming according to the event that is dispatched to it.
class MyOrdersUpcomingBloc
    extends Bloc<MyOrdersUpcomingEvent, MyOrdersUpcomingState> {
  MyOrdersUpcomingBloc(MyOrdersUpcomingState initialState)
      : super(initialState) {
    on<MyOrdersUpcomingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersUpcomingInitialEvent event,
    Emitter<MyOrdersUpcomingState> emit,
  ) async {}
}
