// ignore_for_file: must_be_immutable

part of 'rating_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Rating widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RatingEvent extends Equatable {}

/// Event that is dispatched when the Rating widget is first created.
class RatingInitialEvent extends RatingEvent {
  @override
  List<Object?> get props => [];
}
