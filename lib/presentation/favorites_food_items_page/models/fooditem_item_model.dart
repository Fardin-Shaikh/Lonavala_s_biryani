import '../../../core/app_export.dart';

/// This class is used in the [fooditem_item_widget] screen.
class FooditemItemModel {
  FooditemItemModel({
    this.price,
    this.fortyFive,
    this.twentyFive,
    this.name,
    this.description,
    this.id,
  }) {
    price = price ?? ImageConstant.imgImage80165x323;
    fortyFive = fortyFive ?? "4.5";
    twentyFive = twentyFive ?? "(25+)";
    name = name ?? "Chicken Hawaiian";
    description = description ?? "Chicken, Cheese and pineapple";
    id = id ?? "";
  }

  String? price;

  String? fortyFive;

  String? twentyFive;

  String? name;

  String? description;

  String? id;
}
