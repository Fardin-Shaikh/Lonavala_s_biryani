// ignore_for_file: must_be_immutable

part of 'cart_bloc.dart';

/// Represents the state of Cart in the application.
class CartState extends Equatable {
  CartState({
    this.applyController,
    this.cartModelObj,
  });

  TextEditingController? applyController;

  CartModel? cartModelObj;

  @override
  List<Object?> get props => [
        applyController,
        cartModelObj,
      ];
  CartState copyWith({
    TextEditingController? applyController,
    CartModel? cartModelObj,
  }) {
    return CartState(
      applyController: applyController ?? this.applyController,
      cartModelObj: cartModelObj ?? this.cartModelObj,
    );
  }
}
