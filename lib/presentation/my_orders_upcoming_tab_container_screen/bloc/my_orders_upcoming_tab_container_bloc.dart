import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/my_orders_upcoming_tab_container_screen/models/my_orders_upcoming_tab_container_model.dart';
part 'my_orders_upcoming_tab_container_event.dart';
part 'my_orders_upcoming_tab_container_state.dart';

/// A bloc that manages the state of a MyOrdersUpcomingTabContainer according to the event that is dispatched to it.
class MyOrdersUpcomingTabContainerBloc extends Bloc<
    MyOrdersUpcomingTabContainerEvent, MyOrdersUpcomingTabContainerState> {
  MyOrdersUpcomingTabContainerBloc(
      MyOrdersUpcomingTabContainerState initialState)
      : super(initialState) {
    on<MyOrdersUpcomingTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersUpcomingTabContainerInitialEvent event,
    Emitter<MyOrdersUpcomingTabContainerState> emit,
  ) async {}
}
