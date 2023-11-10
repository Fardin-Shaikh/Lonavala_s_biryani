// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'fooditem_item_model.dart';

/// This class defines the variables used in the [favorites_food_items_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoritesFoodItemsModel extends Equatable {
  FavoritesFoodItemsModel({this.fooditemItemList = const []}) {}

  List<FooditemItemModel> fooditemItemList;

  FavoritesFoodItemsModel copyWith(
      {List<FooditemItemModel>? fooditemItemList}) {
    return FavoritesFoodItemsModel(
      fooditemItemList: fooditemItemList ?? this.fooditemItemList,
    );
  }

  @override
  List<Object?> get props => [fooditemItemList];
}
