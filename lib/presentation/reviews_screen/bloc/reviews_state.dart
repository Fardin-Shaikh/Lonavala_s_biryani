// ignore_for_file: must_be_immutable

part of 'reviews_bloc.dart';

/// Represents the state of Reviews in the application.
class ReviewsState extends Equatable {
  ReviewsState({
    this.writeyourreviewController,
    this.reviewsModelObj,
  });

  TextEditingController? writeyourreviewController;

  ReviewsModel? reviewsModelObj;

  @override
  List<Object?> get props => [
        writeyourreviewController,
        reviewsModelObj,
      ];
  ReviewsState copyWith({
    TextEditingController? writeyourreviewController,
    ReviewsModel? reviewsModelObj,
  }) {
    return ReviewsState(
      writeyourreviewController:
          writeyourreviewController ?? this.writeyourreviewController,
      reviewsModelObj: reviewsModelObj ?? this.reviewsModelObj,
    );
  }
}
