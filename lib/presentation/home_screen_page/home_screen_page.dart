import '../home_screen_page/widgets/burger_item_widget.dart';
import '../home_screen_page/widgets/userlocation_item_widget.dart';
import 'bloc/home_screen_bloc.dart';
import 'models/burger_item_model.dart';
import 'models/home_screen_model.dart';
import 'models/userlocation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenPageState createState() => HomeScreenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenBloc>(
      create: (context) => HomeScreenBloc(HomeScreenState(
        homeScreenModelObj: HomeScreenModel(),
      ))
        ..add(HomeScreenInitialEvent()),
      child: HomeScreenPage(),
    );
  }
}

class HomeScreenPageState extends State<HomeScreenPage>
    with AutomaticKeepAliveClientMixin<HomeScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 28.v),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(left: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 24.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "msg_featured_restaurants".tr,
                          style: CustomTextStyles.titleMediumBluegray90001,
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_view_all".tr,
                            style: CustomTextStyles.bodyMediumDeeporangeA200,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 6.v,
                          width: 3.h,
                          margin: EdgeInsets.only(
                            left: 5.h,
                            top: 7.v,
                            bottom: 4.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration:
                                AppDecoration.outlineBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildEleven(
                                  context,
                                  userImage: ImageConstant.imgMaskGroup,
                                  userName: "lbl_4_5".tr,
                                  userNumber: "lbl_25".tr,
                                ),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 13.h),
                                  child: _buildStarbuck(
                                    context,
                                    userName: "lbl_mcdonald_s".tr,
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 13.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGroup17504,
                                        height: 11.v,
                                        width: 13.h,
                                        margin: EdgeInsets.only(
                                          top: 1.v,
                                          bottom: 3.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 7.h,
                                          top: 1.v,
                                        ),
                                        child: Text(
                                          "lbl_free_delivery".tr,
                                          style: CustomTextStyles
                                              .bodySmallHelveticaNeueBluegray40004,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGroup17503,
                                        height: 12.v,
                                        width: 10.h,
                                        margin: EdgeInsets.only(
                                          left: 17.h,
                                          top: 1.v,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 5.h,
                                          bottom: 1.v,
                                        ),
                                        child: Text(
                                          "lbl_10_15_mins".tr,
                                          style: CustomTextStyles
                                              .bodySmallHelveticaNeueBluegray40004,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 13.h),
                                  child: BlocSelector<HomeScreenBloc,
                                      HomeScreenState, HomeScreenModel?>(
                                    selector: (state) =>
                                        state.homeScreenModelObj,
                                    builder: (context, homeScreenModelObj) {
                                      return Wrap(
                                        runSpacing: 8.v,
                                        spacing: 8.h,
                                        children: List<Widget>.generate(
                                          homeScreenModelObj
                                                  ?.burgerItemList.length ??
                                              0,
                                          (index) {
                                            BurgerItemModel model =
                                                homeScreenModelObj
                                                            ?.burgerItemList[
                                                        index] ??
                                                    BurgerItemModel();

                                            return BurgerItemWidget(
                                              model,
                                              onSelectedChipView: (value) {
                                                context
                                                    .read<HomeScreenBloc>()
                                                    .add(UpdateChipViewEvent(
                                                        index: index,
                                                        isSelected: value));
                                              },
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 14.v),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15.h),
                            decoration:
                                AppDecoration.outlineBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildEleven(
                                  context,
                                  userImage: ImageConstant.imgMaskGroup136x266,
                                  userName: "lbl_4_7".tr,
                                  userNumber: "lbl_99".tr,
                                ),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 13.h),
                                  child: _buildStarbuck(
                                    context,
                                    userName: "lbl_starbuck".tr,
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 13.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGroup17504,
                                        height: 11.v,
                                        width: 13.h,
                                        margin: EdgeInsets.only(
                                          top: 2.v,
                                          bottom: 3.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text(
                                          "lbl_free_delivery".tr,
                                          style: CustomTextStyles
                                              .bodySmallHelveticaNeueBluegray40004,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGroup17503,
                                        height: 12.v,
                                        width: 10.h,
                                        margin: EdgeInsets.only(
                                          left: 19.h,
                                          top: 2.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2.h),
                                        child: Text(
                                          "lbl_10_15_mins".tr,
                                          style: CustomTextStyles
                                              .bodyMediumHelveticaNeueBluegray40004,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 9.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 13.h),
                                  child: Row(
                                    children: [
                                      CustomElevatedButton(
                                        height: 22.v,
                                        width: 54.h,
                                        text: "lbl_burger".tr,
                                        buttonStyle:
                                            CustomButtonStyles.fillGray,
                                        buttonTextStyle: CustomTextStyles
                                            .bodySmallBluegray40002,
                                      ),
                                      CustomElevatedButton(
                                        height: 22.v,
                                        width: 60.h,
                                        text: "lbl_chicken".tr,
                                        margin: EdgeInsets.only(left: 8.h),
                                        buttonStyle:
                                            CustomButtonStyles.fillGray,
                                        buttonTextStyle: CustomTextStyles
                                            .bodySmallBluegray40002,
                                      ),
                                      Container(
                                        width: 70.h,
                                        margin: EdgeInsets.only(left: 8.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.h,
                                          vertical: 4.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillGray.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                        child: Text(
                                          "lbl_fast_food".tr,
                                          style: CustomTextStyles
                                              .bodySmallBluegray40002,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 14.v),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Text(
                    "lbl_popular_items".tr,
                    style: CustomTextStyles.titleMediumBluegray90001,
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 24.h),
                    child: Row(
                      children: [
                        Container(
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 158.v,
                                width: 154.h,
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        height: 147.v,
                                        width: 154.h,
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage10,
                                              height: 147.v,
                                              width: 154.h,
                                              radius: BorderRadius.circular(
                                                15.h,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: SizedBox(
                                                height: 146.v,
                                                child: BlocSelector<
                                                    HomeScreenBloc,
                                                    HomeScreenState,
                                                    HomeScreenModel?>(
                                                  selector: (state) =>
                                                      state.homeScreenModelObj,
                                                  builder: (context,
                                                      homeScreenModelObj) {
                                                    return ListView.separated(
                                                      padding: EdgeInsets.only(
                                                        left: 10.h,
                                                        top: 10.v,
                                                        bottom: 108.v,
                                                      ),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      separatorBuilder: (
                                                        context,
                                                        index,
                                                      ) {
                                                        return SizedBox(
                                                          width: 14.h,
                                                        );
                                                      },
                                                      itemCount: homeScreenModelObj
                                                              ?.userlocationItemList
                                                              .length ??
                                                          0,
                                                      itemBuilder:
                                                          (context, index) {
                                                        UserlocationItemModel
                                                            model =
                                                            homeScreenModelObj
                                                                        ?.userlocationItemList[
                                                                    index] ??
                                                                UserlocationItemModel();
                                                        return UserlocationItemWidget(
                                                          model,
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 10.h,
                                        top: 134.v,
                                        right: 84.h,
                                      ),
                                      child: _buildFortyFive(
                                        context,
                                        userLabel: "lbl_4_5".tr,
                                        userLabel2: "lbl_25".tr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "lbl_salmon_salad".tr,
                                  style: CustomTextStyles.titleSmallBlack900,
                                ),
                              ),
                              SizedBox(height: 9.v),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "msg_baked_salmon_fish".tr,
                                  style: CustomTextStyles.bodySmallLight,
                                ),
                              ),
                              SizedBox(height: 16.v),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.h),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 158.v,
                                width: 154.h,
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        height: 147.v,
                                        width: 154.h,
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgUxrhru8fphq,
                                              height: 147.v,
                                              width: 154.h,
                                              radius: BorderRadius.circular(
                                                15.h,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 134.h,
                                                margin: EdgeInsets.fromLTRB(
                                                    10.h, 10.v, 10.h, 108.v),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      height: 28.v,
                                                      width: 58.h,
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle99,
                                                            height: 28.v,
                                                            width: 58.h,
                                                            radius: BorderRadius
                                                                .circular(
                                                              14.h,
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          7.h),
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text: "lbl"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmallTTCommonsPrimary9,
                                                                    ),
                                                                    TextSpan(
                                                                      text: "lbl_8_252"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleLargeTTCommonsOnPrimary,
                                                                    ),
                                                                  ],
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    CustomIconButton(
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(6.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlinePrimary,
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgLocationWhiteA70001,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 10.h,
                                        top: 134.v,
                                        right: 84.h,
                                      ),
                                      child: _buildFortyFive(
                                        context,
                                        userLabel: "lbl_4_5".tr,
                                        userLabel2: "lbl_25".tr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "lbl_salmon_salad".tr,
                                  style: CustomTextStyles.titleSmallBlack900,
                                ),
                              ),
                              SizedBox(height: 9.v),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "msg_baked_salmon_fish".tr,
                                  style: CustomTextStyles.bodySmallLight,
                                ),
                              ),
                              SizedBox(height: 16.v),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildEleven(
    BuildContext context, {
    required String userImage,
    required String userName,
    required String userNumber,
  }) {
    return SizedBox(
      height: 136.v,
      width: 266.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 136.v,
            width: 266.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 245.h,
              margin: EdgeInsets.fromLTRB(10.h, 10.v, 10.h, 98.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 69.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            userName,
                            style: CustomTextStyles.labelMediumSofiaProSemiBold
                                .copyWith(
                              color: appTheme.black900,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPath3389,
                          height: 9.adaptSize,
                          width: 9.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            userNumber,
                            style: CustomTextStyles.bodySmall8_1.copyWith(
                              color: appTheme.gray500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomIconButton(
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.outlinePrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLocationWhiteA70001,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildStarbuck(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      children: [
        Text(
          userName,
          style: CustomTextStyles.titleSmallBlack900_1.copyWith(
            color: appTheme.black900,
          ),
        ),
        Container(
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 2.v,
            bottom: 2.v,
          ),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.fillTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgVector3,
            height: 2.v,
            width: 3.h,
            alignment: Alignment.topLeft,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFortyFive(
    BuildContext context, {
    required String userLabel,
    required String userLabel2,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            userLabel,
            style: CustomTextStyles.labelMediumSofiaPro.copyWith(
              color: appTheme.black900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPath3389,
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 1.v,
            ),
            child: Text(
              userLabel2,
              style: CustomTextStyles.sofiaProGray500.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
