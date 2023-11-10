// ignore_for_file: must_be_immutable

part of 'favorites_food_items_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FavoritesFoodItemsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FavoritesFoodItemsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the FavoritesFoodItemsTabContainer widget is first created.
class FavoritesFoodItemsTabContainerInitialEvent
    extends FavoritesFoodItemsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
