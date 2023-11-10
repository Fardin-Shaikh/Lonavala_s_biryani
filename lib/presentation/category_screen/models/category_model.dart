// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'fooditemsection_item_model.dart';

/// This class defines the variables used in the [category_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryModel extends Equatable {
  CategoryModel({this.fooditemsectionItemList = const []}) {}

  List<FooditemsectionItemModel> fooditemsectionItemList;

  CategoryModel copyWith(
      {List<FooditemsectionItemModel>? fooditemsectionItemList}) {
    return CategoryModel(
      fooditemsectionItemList:
          fooditemsectionItemList ?? this.fooditemsectionItemList,
    );
  }

  @override
  List<Object?> get props => [fooditemsectionItemList];
}
