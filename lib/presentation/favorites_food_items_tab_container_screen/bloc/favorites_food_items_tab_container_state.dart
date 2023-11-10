// ignore_for_file: must_be_immutable

part of 'favorites_food_items_tab_container_bloc.dart';

/// Represents the state of FavoritesFoodItemsTabContainer in the application.
class FavoritesFoodItemsTabContainerState extends Equatable {
  FavoritesFoodItemsTabContainerState(
      {this.favoritesFoodItemsTabContainerModelObj});

  FavoritesFoodItemsTabContainerModel? favoritesFoodItemsTabContainerModelObj;

  @override
  List<Object?> get props => [
        favoritesFoodItemsTabContainerModelObj,
      ];
  FavoritesFoodItemsTabContainerState copyWith(
      {FavoritesFoodItemsTabContainerModel?
          favoritesFoodItemsTabContainerModelObj}) {
    return FavoritesFoodItemsTabContainerState(
      favoritesFoodItemsTabContainerModelObj:
          favoritesFoodItemsTabContainerModelObj ??
              this.favoritesFoodItemsTabContainerModelObj,
    );
  }
}
