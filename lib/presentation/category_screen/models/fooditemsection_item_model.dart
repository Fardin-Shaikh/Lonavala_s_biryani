import '../../../core/app_export.dart';

/// This class is used in the [fooditemsection_item_widget] screen.
class FooditemsectionItemModel {
  FooditemsectionItemModel({
    this.price,
    this.ratingText,
    this.ratingPlusText,
    this.name,
    this.description,
    this.id,
  }) {
    price = price ?? ImageConstant.imgImage80;
    ratingText = ratingText ?? "4.5";
    ratingPlusText = ratingPlusText ?? "(25+)";
    name = name ?? "Chicken Hawaiian";
    description = description ?? "Chicken, Cheese and pineapple";
    id = id ?? "";
  }

  String? price;

  String? ratingText;

  String? ratingPlusText;

  String? name;

  String? description;

  String? id;
}
