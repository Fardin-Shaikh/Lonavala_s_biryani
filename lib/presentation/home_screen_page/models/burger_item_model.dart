// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [burger_item_widget] screen.
class BurgerItemModel extends Equatable {
  BurgerItemModel({
    this.burger,
    this.isSelected,
  }) {
    burger = burger ?? "Burger";
    isSelected = isSelected ?? false;
  }

  String? burger;

  bool? isSelected;

  BurgerItemModel copyWith({
    String? burger,
    bool? isSelected,
  }) {
    return BurgerItemModel(
      burger: burger ?? this.burger,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [burger, isSelected];
}
