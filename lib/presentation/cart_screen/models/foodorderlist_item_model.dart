import '../../../core/app_export.dart';

/// This class is used in the [foodorderlist_item_widget] screen.
class FoodorderlistItemModel {
  FoodorderlistItemModel({
    this.foodImage,
    this.foodName,
    this.foodName1,
    this.foodDescription,
    this.foodPrice,
    this.quantity,
    this.id,
  }) {
    foodImage = foodImage ?? ImageConstant.imgImage8281x82;
    foodName = foodName ?? ImageConstant.imgImage8082x82;
    foodName1 = foodName1 ?? "Red n hot pizza";
    foodDescription = foodDescription ?? "Spicy chicken, beef";
    foodPrice = foodPrice ?? "15.30";
    quantity = quantity ?? "02";
    id = id ?? "";
  }

  String? foodImage;

  String? foodName;

  String? foodName1;

  String? foodDescription;

  String? foodPrice;

  String? quantity;

  String? id;
}
