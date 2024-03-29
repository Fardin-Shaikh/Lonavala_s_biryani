import 'bloc/reviews_bloc.dart';
import 'models/reviews_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_text_form_field.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewsBloc>(
        create: (context) =>
            ReviewsBloc(ReviewsState(reviewsModelObj: ReviewsModel()))
              ..add(ReviewsInitialEvent()),
        child: ReviewsScreen());
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
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.h),
                        child: Column(children: [
                          BlocSelector<ReviewsBloc, ReviewsState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.writeyourreviewController,
                              builder: (context, writeyourreviewController) {
                                return CustomTextFormField(
                                    controller: writeyourreviewController,
                                    hintText: "msg_write_your_review".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyMediumOnPrimary_1,
                                    textInputAction: TextInputAction.done,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            13.h, 10.v, 17.h, 11.v),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgMaskGroup49x49,
                                            height: 30.adaptSize,
                                            width: 30.adaptSize)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 51.v),
                                    contentPadding: EdgeInsets.only(
                                        top: 18.v, right: 30.h, bottom: 18.v));
                              }),
                          SizedBox(height: 35.v),
                          _buildAlyceLamboRow(context),
                          SizedBox(height: 20.v),
                          _buildGonelaSolom(context),
                          SizedBox(height: 24.v),
                          _buildBrianCRow(context),
                          SizedBox(height: 20.v),
                          _buildHelsmarEStack(context)
                        ]))))));
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
        title: AppbarTitle(text: "lbl_reviews".tr));
  }

  /// Section Widget
  Widget _buildAlyceLamboRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 148.v,
              width: 312.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 67.h, top: 10.v),
                        child: Text("lbl_alyce_lambo".tr,
                            style: CustomTextStyles.bodyMediumBlack900))),
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: 148.v,
                        width: 312.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          _buildPathTwentyThree(context,
                              userLabel: "lbl_5_0".tr),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 68.h),
                                        child: Text("lbl_25_06_2020".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray40002)),
                                    SizedBox(height: 21.v),
                                    SizedBox(
                                        width: 312.h,
                                        child: Text("msg_really_convenient".tr,
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumBluegray40003
                                                .copyWith(height: 1.41)))
                                  ]))
                        ])))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgGroup17764,
              height: 12.v,
              width: 4.h,
              margin: EdgeInsets.only(left: 9.h, top: 13.v, bottom: 123.v))
        ]);
  }

  /// Section Widget
  Widget _buildGonelaSolom(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 210.v,
              width: 313.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 67.h, top: 9.v),
                        child: Text("lbl_gonela_solom".tr,
                            style: CustomTextStyles.bodyMediumBlack900))),
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: 210.v,
                        width: 313.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          _buildPathTwentyThree(context,
                              userLabel: "lbl_4_5".tr),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 68.h),
                                        child: Text("lbl_22_06_2020".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray40002)),
                                    SizedBox(height: 21.v),
                                    SizedBox(
                                        width: 313.h,
                                        child: Text("msg_been_a_life_saver".tr,
                                            maxLines: 8,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumBluegray40003
                                                .copyWith(height: 1.41)))
                                  ]))
                        ])))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgGroup17764,
              height: 12.v,
              width: 4.h,
              margin: EdgeInsets.only(left: 7.h, top: 13.v, bottom: 185.v))
        ]);
  }

  /// Section Widget
  Widget _buildBrianCRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 148.v,
              width: 319.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 67.h, top: 9.v),
                        child: Text("lbl_brian_c".tr,
                            style: CustomTextStyles.bodyMediumBlack900))),
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: 148.v,
                        width: 319.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          _buildPathTwentyThree(context,
                              userLabel: "lbl_2_52".tr),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 68.h),
                                        child: Text("lbl_21_06_2020".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray40002)),
                                    SizedBox(height: 21.v),
                                    SizedBox(
                                        width: 319.h,
                                        child: Text("msg_got_an_intro_offer".tr,
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumBluegray40003
                                                .copyWith(height: 1.41)))
                                  ]))
                        ])))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgGroup17764,
              height: 12.v,
              width: 4.h,
              margin: EdgeInsets.only(left: 1.h, top: 13.v, bottom: 123.v))
        ]);
  }

  /// Section Widget
  Widget _buildHelsmarEStack(BuildContext context) {
    return SizedBox(
        height: 139.v,
        width: 325.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 67.h, top: 9.v),
                  child: Text("lbl_helsmar_e".tr,
                      style: CustomTextStyles.bodyMediumBlack900))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 139.v,
                  width: 325.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    _buildPathTwentyThree(context, userLabel: "lbl_3_5".tr),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 68.h),
                                  child: Text("lbl_20_06_2020".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray40002)),
                              SizedBox(height: 22.v),
                              SizedBox(
                                  width: 325.h,
                                  child: Text("msg_amet_minim_mollit".tr,
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray40003
                                          .copyWith(height: 1.31)))
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup17764,
                        height: 12.v,
                        width: 4.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 13.v))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildPathTwentyThree(
    BuildContext context, {
    required String userLabel,
  }) {
    return SizedBox(
        height: 48.v,
        width: 53.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle410948x48,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(24.h),
              alignment: Alignment.centerLeft),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroupAmber400,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Text(userLabel,
                            style: theme.textTheme.labelSmall!
                                .copyWith(color: appTheme.whiteA70001)))
                  ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
