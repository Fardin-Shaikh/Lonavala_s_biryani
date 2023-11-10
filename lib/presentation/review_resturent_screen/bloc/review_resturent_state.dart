// ignore_for_file: must_be_immutable

part of 'review_resturent_bloc.dart';

/// Represents the state of ReviewResturent in the application.
class ReviewResturentState extends Equatable {
  ReviewResturentState({this.reviewResturentModelObj});

  ReviewResturentModel? reviewResturentModelObj;

  @override
  List<Object?> get props => [
        reviewResturentModelObj,
      ];
  ReviewResturentState copyWith(
      {ReviewResturentModel? reviewResturentModelObj}) {
    return ReviewResturentState(
      reviewResturentModelObj:
          reviewResturentModelObj ?? this.reviewResturentModelObj,
    );
  }
}
