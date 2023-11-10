// ignore_for_file: must_be_immutable

part of 'rating_bloc.dart';

/// Represents the state of Rating in the application.
class RatingState extends Equatable {
  RatingState({
    this.reviewPromptController,
    this.ratingModelObj,
  });

  TextEditingController? reviewPromptController;

  RatingModel? ratingModelObj;

  @override
  List<Object?> get props => [
        reviewPromptController,
        ratingModelObj,
      ];
  RatingState copyWith({
    TextEditingController? reviewPromptController,
    RatingModel? ratingModelObj,
  }) {
    return RatingState(
      reviewPromptController:
          reviewPromptController ?? this.reviewPromptController,
      ratingModelObj: ratingModelObj ?? this.ratingModelObj,
    );
  }
}
