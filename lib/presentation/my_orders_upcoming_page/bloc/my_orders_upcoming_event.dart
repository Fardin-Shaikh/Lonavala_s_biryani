// ignore_for_file: must_be_immutable

part of 'my_orders_upcoming_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersUpcoming widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersUpcomingEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersUpcoming widget is first created.
class MyOrdersUpcomingInitialEvent extends MyOrdersUpcomingEvent {
  @override
  List<Object?> get props => [];
}
