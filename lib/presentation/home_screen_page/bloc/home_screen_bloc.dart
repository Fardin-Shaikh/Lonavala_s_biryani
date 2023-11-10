import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/burger_item_model.dart';
import '../models/userlocation_item_model.dart';
import 'package:lonavala_s_biryani/presentation/home_screen_page/models/home_screen_model.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';

/// A bloc that manages the state of a HomeScreen according to the event that is dispatched to it.
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(HomeScreenState initialState) : super(initialState) {
    on<HomeScreenInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    HomeScreenInitialEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(
        homeScreenModelObj: state.homeScreenModelObj?.copyWith(
      burgerItemList: fillBurgerItemList(),
      userlocationItemList: fillUserlocationItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<HomeScreenState> emit,
  ) {
    List<BurgerItemModel> newList =
        List<BurgerItemModel>.from(state.homeScreenModelObj!.burgerItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        homeScreenModelObj:
            state.homeScreenModelObj?.copyWith(burgerItemList: newList)));
  }

  List<BurgerItemModel> fillBurgerItemList() {
    return List.generate(3, (index) => BurgerItemModel());
  }

  List<UserlocationItemModel> fillUserlocationItemList() {
    return List.generate(2, (index) => UserlocationItemModel());
  }
}
