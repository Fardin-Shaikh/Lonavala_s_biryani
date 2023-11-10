import '../favorites_food_items_page/widgets/fooditem_item_widget.dart';
import 'bloc/favorites_food_items_bloc.dart';
import 'models/favorites_food_items_model.dart';
import 'models/fooditem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FavoritesFoodItemsPage extends StatefulWidget {
  const FavoritesFoodItemsPage({Key? key})
      : super(
          key: key,
        );

  @override
  FavoritesFoodItemsPageState createState() => FavoritesFoodItemsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FavoritesFoodItemsBloc>(
      create: (context) => FavoritesFoodItemsBloc(FavoritesFoodItemsState(
        favoritesFoodItemsModelObj: FavoritesFoodItemsModel(),
      ))
        ..add(FavoritesFoodItemsInitialEvent()),
      child: FavoritesFoodItemsPage(),
    );
  }
}

class FavoritesFoodItemsPageState extends State<FavoritesFoodItemsPage>
    with AutomaticKeepAliveClientMixin<FavoritesFoodItemsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildFoodItem(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodItem(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: BlocSelector<FavoritesFoodItemsBloc, FavoritesFoodItemsState,
          FavoritesFoodItemsModel?>(
        selector: (state) => state.favoritesFoodItemsModelObj,
        builder: (context, favoritesFoodItemsModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 20.v,
              );
            },
            itemCount: favoritesFoodItemsModelObj?.fooditemItemList.length ?? 0,
            itemBuilder: (context, index) {
              FooditemItemModel model =
                  favoritesFoodItemsModelObj?.fooditemItemList[index] ??
                      FooditemItemModel();
              return FooditemItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
