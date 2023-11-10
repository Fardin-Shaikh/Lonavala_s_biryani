// ignore_for_file: must_be_immutable

part of 'favorites_food_items_bloc.dart';

/// Represents the state of FavoritesFoodItems in the application.
class FavoritesFoodItemsState extends Equatable {
  FavoritesFoodItemsState({this.favoritesFoodItemsModelObj});

  FavoritesFoodItemsModel? favoritesFoodItemsModelObj;

  @override
  List<Object?> get props => [
        favoritesFoodItemsModelObj,
      ];
  FavoritesFoodItemsState copyWith(
      {FavoritesFoodItemsModel? favoritesFoodItemsModelObj}) {
    return FavoritesFoodItemsState(
      favoritesFoodItemsModelObj:
          favoritesFoodItemsModelObj ?? this.favoritesFoodItemsModelObj,
    );
  }
}
