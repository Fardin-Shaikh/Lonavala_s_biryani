// ignore_for_file: must_be_immutable

part of 'side_menu_bloc.dart';

/// Represents the state of SideMenu in the application.
class SideMenuState extends Equatable {
  SideMenuState({
    this.radioGroup = "",
    this.sideMenuModelObj,
  });

  SideMenuModel? sideMenuModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        sideMenuModelObj,
      ];
  SideMenuState copyWith({
    String? radioGroup,
    SideMenuModel? sideMenuModelObj,
  }) {
    return SideMenuState(
      radioGroup: radioGroup ?? this.radioGroup,
      sideMenuModelObj: sideMenuModelObj ?? this.sideMenuModelObj,
    );
  }
}
