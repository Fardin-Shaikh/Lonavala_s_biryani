// ignore_for_file: must_be_immutable

part of 'home_screen_tab_container_bloc.dart';

/// Represents the state of HomeScreenTabContainer in the application.
class HomeScreenTabContainerState extends Equatable {
  HomeScreenTabContainerState({
    this.searchController,
    this.selectedDropDownValue,
    this.homeScreenTabContainerModelObj,
  });

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  HomeScreenTabContainerModel? homeScreenTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectedDropDownValue,
        homeScreenTabContainerModelObj,
      ];
  HomeScreenTabContainerState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    HomeScreenTabContainerModel? homeScreenTabContainerModelObj,
  }) {
    return HomeScreenTabContainerState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      homeScreenTabContainerModelObj:
          homeScreenTabContainerModelObj ?? this.homeScreenTabContainerModelObj,
    );
  }
}
