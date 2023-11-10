// ignore_for_file: must_be_immutable

part of 'my_orders_upcoming_tab_container_bloc.dart';

/// Represents the state of MyOrdersUpcomingTabContainer in the application.
class MyOrdersUpcomingTabContainerState extends Equatable {
  MyOrdersUpcomingTabContainerState(
      {this.myOrdersUpcomingTabContainerModelObj});

  MyOrdersUpcomingTabContainerModel? myOrdersUpcomingTabContainerModelObj;

  @override
  List<Object?> get props => [
        myOrdersUpcomingTabContainerModelObj,
      ];
  MyOrdersUpcomingTabContainerState copyWith(
      {MyOrdersUpcomingTabContainerModel?
          myOrdersUpcomingTabContainerModelObj}) {
    return MyOrdersUpcomingTabContainerState(
      myOrdersUpcomingTabContainerModelObj:
          myOrdersUpcomingTabContainerModelObj ??
              this.myOrdersUpcomingTabContainerModelObj,
    );
  }
}
