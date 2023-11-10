// ignore_for_file: must_be_immutable

part of 'food_details_bloc.dart';

/// Represents the state of FoodDetails in the application.
class FoodDetailsState extends Equatable {
  FoodDetailsState({
    this.choiceName = "",
    this.foodDetailsModelObj,
  });

  FoodDetailsModel? foodDetailsModelObj;

  String choiceName;

  @override
  List<Object?> get props => [
        choiceName,
        foodDetailsModelObj,
      ];
  FoodDetailsState copyWith({
    String? choiceName,
    FoodDetailsModel? foodDetailsModelObj,
  }) {
    return FoodDetailsState(
      choiceName: choiceName ?? this.choiceName,
      foodDetailsModelObj: foodDetailsModelObj ?? this.foodDetailsModelObj,
    );
  }
}
