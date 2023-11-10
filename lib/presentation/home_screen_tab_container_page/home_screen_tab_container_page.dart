import 'bloc/home_screen_tab_container_bloc.dart';
import 'models/home_screen_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/presentation/home_screen_page/home_screen_page.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_subtitle.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_icon_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreenTabContainerPage extends StatefulWidget {
  const HomeScreenTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenTabContainerPageState createState() =>
      HomeScreenTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenTabContainerBloc>(
      create: (context) =>
          HomeScreenTabContainerBloc(HomeScreenTabContainerState(
        homeScreenTabContainerModelObj: HomeScreenTabContainerModel(),
      ))
            ..add(HomeScreenTabContainerInitialEvent()),
      child: HomeScreenTabContainerPage(),
    );
  }
}

class HomeScreenTabContainerPageState extends State<HomeScreenTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 272.h,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    right: 78.h,
                  ),
                  child: Text(
                    "msg_what_would_you_like_to".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineLargeBluegray900,
                  ),
                ),
                SizedBox(height: 20.v),
                _buildSearchRow(context),
                SizedBox(height: 30.v),
                _buildBurgerRow(context),
                SizedBox(
                  height: 374.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      HomeScreenPage.builder(context),
                      HomeScreenPage.builder(context),
                      HomeScreenPage.builder(context),
                      HomeScreenPage.builder(context),
                      HomeScreenPage.builder(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroup17484,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 10.v,
          bottom: 7.v,
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          BlocSelector<HomeScreenTabContainerBloc, HomeScreenTabContainerState,
              HomeScreenTabContainerModel?>(
            selector: (state) => state.homeScreenTabContainerModelObj,
            builder: (context, homeScreenTabContainerModelObj) {
              return AppbarTitleDropdown(
                margin: EdgeInsets.only(
                  left: 39.h,
                  right: 41.h,
                ),
                hintText: "lbl_deliver_to".tr,
                items: homeScreenTabContainerModelObj?.dropdownItemList ?? [],
                onTap: (value) {
                  context.read<Bloc>().add(onSelected(value: value));
                },
              );
            },
          ),
          SizedBox(height: 7.v),
          AppbarSubtitle(
            text: "msg_4102_pretty_view".tr,
          ),
        ],
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgProfile,
          margin: EdgeInsets.fromLTRB(27.h, 10.v, 27.h, 7.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: BlocSelector<HomeScreenTabContainerBloc,
                  HomeScreenTabContainerState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "msg_find_for_food_or".tr,
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: CustomIconButton(
                height: 51.adaptSize,
                width: 51.adaptSize,
                padding: EdgeInsets.all(16.h),
                decoration: IconButtonStyleHelper.outlineBlueGrayF,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFilter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBurgerRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 25.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 98.v,
              width: 351.h,
              child: TabBar(
                controller: tabviewController,
                isScrollable: true,
                labelColor: appTheme.whiteA70001,
                labelStyle: TextStyle(
                  fontSize: 11.fSize,
                  fontFamily: 'Sofia Pro',
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelColor: appTheme.gray700,
                unselectedLabelStyle: TextStyle(
                  fontSize: 11.fSize,
                  fontFamily: 'Sofia Pro',
                  fontWeight: FontWeight.w500,
                ),
                indicator: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    29.h,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withOpacity(0.25),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        20,
                      ),
                    ),
                  ],
                ),
                tabs: [
                  Tab(
                    child: Container(
                      padding: EdgeInsets.all(4.h),
                      decoration: AppDecoration.outlinePrimary2.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder28,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup49x49,
                            height: 49.adaptSize,
                            width: 49.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 12.v,
                              bottom: 16.v,
                            ),
                            child: Text(
                              "lbl_burger".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: AppDecoration.outlineBluegray1001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder28,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage134,
                            height: 58.adaptSize,
                            width: 58.adaptSize,
                            radius: BorderRadius.circular(
                              29.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 22.v,
                            ),
                            child: Text(
                              "lbl_donat".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: AppDecoration.outlineBluegray1001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder28,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage13458x58,
                            height: 58.adaptSize,
                            width: 58.adaptSize,
                            radius: BorderRadius.circular(
                              29.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 14.h,
                              top: 6.v,
                              bottom: 22.v,
                            ),
                            child: Text(
                              "lbl_pizza".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: AppDecoration.outlineBluegray1001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder28,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage1341,
                            height: 58.adaptSize,
                            width: 58.adaptSize,
                            radius: BorderRadius.circular(
                              29.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 22.v,
                            ),
                            child: Text(
                              "lbl_mexican".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: AppDecoration.outlineBluegray1001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder28,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage1342,
                            height: 58.adaptSize,
                            width: 58.adaptSize,
                            radius: BorderRadius.circular(
                              29.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 13.h,
                              top: 6.v,
                              bottom: 22.v,
                            ),
                            child: Text(
                              "lbl_asian".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 15.h),
              child: IntrinsicWidth(
                child: _buildPizza(
                  context,
                  userName: "lbl_asian".tr,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPizza(
    BuildContext context, {
    required String userName,
  }) {
    return Container(
      decoration: AppDecoration.outlineBluegray1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage13458x58,
            height: 58.adaptSize,
            width: 58.adaptSize,
            radius: BorderRadius.circular(
              29.h,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              userName,
              style: CustomTextStyles.labelMediumSofiaProGray700.copyWith(
                color: appTheme.gray700,
              ),
            ),
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }
}
