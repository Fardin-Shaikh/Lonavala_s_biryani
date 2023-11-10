// ignore_for_file: must_be_immutable

part of 'my_orders_upcoming_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersUpcomingTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersUpcomingTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersUpcomingTabContainer widget is first created.
class MyOrdersUpcomingTabContainerInitialEvent
    extends MyOrdersUpcomingTabContainerEvent {
  @override
  List<Object?> get props => [];
}
