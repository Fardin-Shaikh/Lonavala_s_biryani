// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:lonavala_s_biryani/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [home_screen_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenTabContainerModel extends Equatable {
  HomeScreenTabContainerModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  HomeScreenTabContainerModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return HomeScreenTabContainerModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
