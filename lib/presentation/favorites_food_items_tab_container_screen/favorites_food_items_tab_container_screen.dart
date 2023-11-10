import 'bloc/favorites_food_items_tab_container_bloc.dart';
import 'models/favorites_food_items_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/favorites_food_items_page/favorites_food_items_page.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';

class FavoritesFoodItemsTabContainerScreen extends StatefulWidget {
  const FavoritesFoodItemsTabContainerScreen({Key? key}) : super(key: key);

  @override
  FavoritesFoodItemsTabContainerScreenState createState() =>
      FavoritesFoodItemsTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<FavoritesFoodItemsTabContainerBloc>(
        create: (context) => FavoritesFoodItemsTabContainerBloc(
            FavoritesFoodItemsTabContainerState(
                favoritesFoodItemsTabContainerModelObj:
                    FavoritesFoodItemsTabContainerModel()))
          ..add(FavoritesFoodItemsTabContainerInitialEvent()),
        child: FavoritesFoodItemsTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class FavoritesFoodItemsTabContainerScreenState
    extends State<FavoritesFoodItemsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<FavoritesFoodItemsTabContainerBloc,
        FavoritesFoodItemsTabContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 23.v),
                      child: Column(children: [
                        _buildTabview(context),
                        SizedBox(
                            height: 650.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  FavoritesFoodItemsPage.builder(context),
                                  FavoritesFoodItemsPage.builder(context)
                                ]))
                      ])))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 26.h, top: 9.v, bottom: 9.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_favorites".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgProfile,
              margin: EdgeInsets.symmetric(horizontal: 27.h, vertical: 9.v))
        ]);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 55.v,
        width: 323.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27.h),
            border: Border.all(color: appTheme.gray20001, width: 1.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA70001,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Sofia Pro',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: theme.colorScheme.primary,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Sofia Pro',
                fontWeight: FontWeight.w400),
            indicatorPadding: EdgeInsets.all(4.0.h),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(23.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.blueGray100.withOpacity(0.25),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(0, 18))
                ]),
            tabs: [
              Tab(child: Text("lbl_food_items".tr)),
              Tab(child: Text("lbl_resturents".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
