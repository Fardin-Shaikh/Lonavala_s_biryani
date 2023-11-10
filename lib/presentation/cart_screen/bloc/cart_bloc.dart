import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/foodorderlist_item_model.dart';
import 'package:lonavala_s_biryani/presentation/cart_screen/models/cart_model.dart';
part 'cart_event.dart';
part 'cart_state.dart';

/// A bloc that manages the state of a Cart according to the event that is dispatched to it.
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(CartState initialState) : super(initialState) {
    on<CartInitialEvent>(_onInitialize);
  }

  List<FoodorderlistItemModel> fillFoodorderlistItemList() {
    return [
      FoodorderlistItemModel(
          foodImage: ImageConstant.imgImage8281x82,
          foodName: ImageConstant.imgImage8082x82,
          foodName1: "Red n hot pizza",
          foodDescription: "Spicy chicken, beef",
          foodPrice: "15.30",
          quantity: "02")
    ];
  }

  _onInitialize(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(
      applyController: TextEditingController(),
    ));
    emit(state.copyWith(
        cartModelObj: state.cartModelObj?.copyWith(
      foodorderlistItemList: fillFoodorderlistItemList(),
    )));
  }
}
