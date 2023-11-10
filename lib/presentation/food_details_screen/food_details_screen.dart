import 'bloc/food_details_bloc.dart';
import 'models/food_details_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_icon_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_radio_button.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FoodDetailsBloc>(
        create: (context) => FoodDetailsBloc(
            FoodDetailsState(foodDetailsModelObj: FoodDetailsModel()))
          ..add(FoodDetailsInitialEvent()),
        child: FoodDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 27.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTwentyFour(context),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 17.h, vertical: 21.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text("msg_ground_beef_tacos".tr,
                                        style: theme.textTheme.headlineMedium)),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgStar,
                                          height: 17.adaptSize,
                                          width: 17.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.h, bottom: 2.v),
                                          child: Text("lbl_4_5".tr,
                                              style: CustomTextStyles
                                                  .titleSmallOnPrimary)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 5.h),
                                          child: Text("lbl_30".tr,
                                              style:
                                                  theme.textTheme.bodyMedium)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.h, bottom: 2.v),
                                          child: Text("lbl_see_review".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumPrimary13
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline)))
                                    ])),
                                SizedBox(height: 10.v),
                                _buildPrice(context),
                                SizedBox(height: 19.v),
                                Container(
                                    width: 317.h,
                                    margin:
                                        EdgeInsets.only(left: 5.h, right: 18.h),
                                    child: Text("msg_brown_the_beef_better".tr,
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumHelveticaNeueBluegray40006
                                            .copyWith(height: 1.57))),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text("msg_choice_of_add_on".tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray90001)),
                                SizedBox(height: 11.v),
                                _buildChoiceName(context),
                                SizedBox(height: 5.v)
                              ]))
                    ])),
            bottomNavigationBar: _buildAddToCart(context)));
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return SizedBox(
        height: 206.v,
        width: 323.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage55,
              height: 206.v,
              width: 323.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          CustomAppBar(
              height: 48.v,
              leadingWidth: 71.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 33.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              actions: [
                AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgLocationWhiteA70001,
                    margin:
                        EdgeInsets.symmetric(horizontal: 43.h, vertical: 5.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 6.h),
        child: Row(children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl".tr,
                    style: CustomTextStyles.titleMediumPrimaryMedium),
                TextSpan(
                    text: "lbl_9_502".tr, style: theme.textTheme.headlineLarge)
              ]),
              textAlign: TextAlign.left),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlinePrimaryTL15,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgGroup17841))),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 12.v, bottom: 13.v),
              child: Text("lbl_02".tr, style: CustomTextStyles.titleMedium16)),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 5.v, bottom: 6.v),
              child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlinePrimaryTL151,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFacebookWhiteA70001)))
        ]));
  }

  /// Section Widget
  Widget _buildChoiceName(BuildContext context) {
    return BlocBuilder<FoodDetailsBloc, FoodDetailsState>(
        builder: (context, state) {
      return state.foodDetailsModelObj!.radioList.isNotEmpty
          ? Column(children: [
              CustomRadioButton(
                  width: 334.h,
                  value: state.foodDetailsModelObj?.radioList[0] ?? "",
                  groupValue: state.choiceName,
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<FoodDetailsBloc>()
                        .add(ChangeRadioButtonEvent(value: value));
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 9.v),
                  child: CustomRadioButton(
                      width: 334.h,
                      value: state.foodDetailsModelObj?.radioList[1] ?? "",
                      groupValue: state.choiceName,
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FoodDetailsBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 9.v),
                  child: CustomRadioButton(
                      width: 334.h,
                      value: state.foodDetailsModelObj?.radioList[2] ?? "",
                      groupValue: state.choiceName,
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FoodDetailsBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }))
            ])
          : Container();
    });
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        height: 53.v,
        width: 167.h,
        text: "lbl_add_to_cart".tr,
        margin: EdgeInsets.only(bottom: 32.v),
        rightIcon: Container(
            margin: EdgeInsets.only(),
            child: CustomImageView(
                imagePath: ImageConstant.imgGroup17858,
                height: 53.v,
                width: 167.h)),
        buttonStyle: CustomButtonStyles.none,
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70001);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
