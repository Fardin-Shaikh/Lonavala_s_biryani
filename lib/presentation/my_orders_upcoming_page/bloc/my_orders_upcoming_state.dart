// ignore_for_file: must_be_immutable

part of 'my_orders_upcoming_bloc.dart';

/// Represents the state of MyOrdersUpcoming in the application.
class MyOrdersUpcomingState extends Equatable {
  MyOrdersUpcomingState({this.myOrdersUpcomingModelObj});

  MyOrdersUpcomingModel? myOrdersUpcomingModelObj;

  @override
  List<Object?> get props => [
        myOrdersUpcomingModelObj,
      ];
  MyOrdersUpcomingState copyWith(
      {MyOrdersUpcomingModel? myOrdersUpcomingModelObj}) {
    return MyOrdersUpcomingState(
      myOrdersUpcomingModelObj:
          myOrdersUpcomingModelObj ?? this.myOrdersUpcomingModelObj,
    );
  }
}
