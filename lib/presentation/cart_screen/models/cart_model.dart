// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'foodorderlist_item_model.dart';

/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel extends Equatable {
  CartModel({this.foodorderlistItemList = const []}) {}

  List<FoodorderlistItemModel> foodorderlistItemList;

  CartModel copyWith({List<FoodorderlistItemModel>? foodorderlistItemList}) {
    return CartModel(
      foodorderlistItemList:
          foodorderlistItemList ?? this.foodorderlistItemList,
    );
  }

  @override
  List<Object?> get props => [foodorderlistItemList];
}
