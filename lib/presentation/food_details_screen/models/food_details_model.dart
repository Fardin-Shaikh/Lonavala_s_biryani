// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [food_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FoodDetailsModel extends Equatable {
  FoodDetailsModel({this.radioList = const []}) {}

  List<String> radioList;

  FoodDetailsModel copyWith({List<String>? radioList}) {
    return FoodDetailsModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
