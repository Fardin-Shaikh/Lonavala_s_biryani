// ignore_for_file: must_be_immutable

part of 'review_resturent_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReviewResturent widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReviewResturentEvent extends Equatable {}

/// Event that is dispatched when the ReviewResturent widget is first created.
class ReviewResturentInitialEvent extends ReviewResturentEvent {
  @override
  List<Object?> get props => [];
}
