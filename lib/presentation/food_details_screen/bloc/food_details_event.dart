// ignore_for_file: must_be_immutable

part of 'food_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FoodDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FoodDetailsEvent extends Equatable {}

/// Event that is dispatched when the FoodDetails widget is first created.
class FoodDetailsInitialEvent extends FoodDetailsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends FoodDetailsEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
