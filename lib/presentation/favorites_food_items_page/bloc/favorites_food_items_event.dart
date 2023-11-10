// ignore_for_file: must_be_immutable

part of 'favorites_food_items_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FavoritesFoodItems widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FavoritesFoodItemsEvent extends Equatable {}

/// Event that is dispatched when the FavoritesFoodItems widget is first created.
class FavoritesFoodItemsInitialEvent extends FavoritesFoodItemsEvent {
  @override
  List<Object?> get props => [];
}
