import 'bloc/my_orders_upcoming_bloc.dart';
import 'models/my_orders_upcoming_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class MyOrdersUpcomingPage extends StatefulWidget {
  const MyOrdersUpcomingPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersUpcomingPageState createState() => MyOrdersUpcomingPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersUpcomingBloc>(
      create: (context) => MyOrdersUpcomingBloc(MyOrdersUpcomingState(
        myOrdersUpcomingModelObj: MyOrdersUpcomingModel(),
      ))
        ..add(MyOrdersUpcomingInitialEvent()),
      child: MyOrdersUpcomingPage(),
    );
  }
}

class MyOrdersUpcomingPageState extends State<MyOrdersUpcomingPage>
    with AutomaticKeepAliveClientMixin<MyOrdersUpcomingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MyOrdersUpcomingBloc, MyOrdersUpcomingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 32.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.h),
                      child: Column(
                        children: [
                          _buildCancelSection(context),
                          SizedBox(height: 30.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "lbl_lasted_orders".tr,
                                style: CustomTextStyles.titleMediumOnPrimary_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 21.v),
                          _buildRateSection(context),
                          SizedBox(height: 20.v),
                          _buildThirtySevenSection(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCancelButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "lbl_cancel".tr,
        margin: EdgeInsets.only(right: 8.h),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL21,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildTrackOrderButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "lbl_track_order".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70001,
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.outlineBluegray1002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65.adaptSize,
                width: 65.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.outlineBluegray1004.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage27,
                  height: 47.v,
                  width: 46.h,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  top: 19.v,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_3_items".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 9.v),
                    Row(
                      children: [
                        Text(
                          "lbl_starbuck".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                        Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 5.v,
                            bottom: 2.v,
                          ),
                          padding: EdgeInsets.all(2.h),
                          decoration: AppDecoration.fillTeal.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVector3,
                            height: 1.v,
                            width: 2.h,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 45.v,
                ),
                child: Text(
                  "lbl_264100".tr,
                  style: CustomTextStyles.bodyLargePrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_estimated_arrival".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    children: [
                      Text(
                        "lbl_252".tr,
                        style: CustomTextStyles.displaySmallOnPrimary,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          top: 19.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "lbl_min".tr,
                          style: CustomTextStyles.bodyMediumOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 24.v),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "lbl_now".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "lbl_food_on_the_way".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary_1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCancelButton(context),
              _buildTrackOrderButton(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRateButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "lbl_rate".tr,
        margin: EdgeInsets.only(right: 8.h),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL21,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildReOrderButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "lbl_re_order".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70001,
      ),
    );
  }

  /// Section Widget
  Widget _buildRateSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.outlineBluegray1002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65.adaptSize,
                width: 65.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray1004.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage35,
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  alignment: Alignment.topCenter,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "lbl_20_jun_10_30".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                              left: 9.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.gray400,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 9.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "lbl_3_items".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "lbl_17_10".tr,
                            style: CustomTextStyles.bodyLargePrimary,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Row(
                      children: [
                        Text(
                          "lbl_jimmy_john_s".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                        Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 3.v,
                            bottom: 4.v,
                          ),
                          padding: EdgeInsets.all(2.h),
                          decoration: AppDecoration.fillTeal.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVector3,
                            height: 1.v,
                            width: 2.h,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        children: [
                          Container(
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                            decoration: BoxDecoration(
                              color: appTheme.green40001,
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_order_delivered".tr,
                              style: CustomTextStyles.bodySmallGreen40001,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRateButton(context),
              _buildReOrderButton(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRateButton1(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "lbl_rate".tr,
        margin: EdgeInsets.only(right: 8.h),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL21,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildReOrderButton1(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "lbl_re_order".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70001,
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtySevenSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.outlineBluegray1002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65.adaptSize,
                width: 65.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray1004.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage76,
                  height: 48.v,
                  width: 36.h,
                  alignment: Alignment.topRight,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  top: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_19_jun_11_50".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(
                            left: 15.h,
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray400,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_2_items2".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Text(
                            "lbl_20_50".tr,
                            style: CustomTextStyles.bodyLargePrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.v),
                    Row(
                      children: [
                        Text(
                          "lbl_subway".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                        Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 3.v,
                            bottom: 4.v,
                          ),
                          padding: EdgeInsets.all(2.h),
                          decoration: AppDecoration.fillTeal.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVector3,
                            height: 1.v,
                            width: 2.h,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Row(
                      children: [
                        Container(
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                          decoration: BoxDecoration(
                            color: appTheme.green40001,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_order_delivered".tr,
                            style: CustomTextStyles.bodySmallGreen40001,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRateButton1(context),
              _buildReOrderButton1(context),
            ],
          ),
        ],
      ),
    );
  }
}
