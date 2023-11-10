// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'burger_item_model.dart';
import 'userlocation_item_model.dart';

/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel extends Equatable {
  HomeScreenModel({
    this.burgerItemList = const [],
    this.userlocationItemList = const [],
  }) {}

  List<BurgerItemModel> burgerItemList;

  List<UserlocationItemModel> userlocationItemList;

  HomeScreenModel copyWith({
    List<BurgerItemModel>? burgerItemList,
    List<UserlocationItemModel>? userlocationItemList,
  }) {
    return HomeScreenModel(
      burgerItemList: burgerItemList ?? this.burgerItemList,
      userlocationItemList: userlocationItemList ?? this.userlocationItemList,
    );
  }

  @override
  List<Object?> get props => [burgerItemList, userlocationItemList];
}
