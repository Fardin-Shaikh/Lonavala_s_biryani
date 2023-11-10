import 'bloc/review_resturent_bloc.dart';
import 'models/review_resturent_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_rating_bar.dart';

class ReviewResturentScreen extends StatelessWidget {
  const ReviewResturentScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewResturentBloc>(
        create: (context) => ReviewResturentBloc(ReviewResturentState(
            reviewResturentModelObj: ReviewResturentModel()))
          ..add(ReviewResturentInitialEvent()),
        child: ReviewResturentScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ReviewResturentBloc, ReviewResturentState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 35.v),
                  child: Column(children: [
                    Container(
                        height: 79.adaptSize,
                        width: 79.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 11.h, vertical: 10.v),
                        decoration: AppDecoration.outlineBluegray1005.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgImage2956x56,
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            radius: BorderRadius.circular(28.h),
                            alignment: Alignment.center)),
                    SizedBox(height: 62.v),
                    Container(
                        width: 316.h,
                        margin: EdgeInsets.symmetric(horizontal: 3.h),
                        child: Text("msg_how_was_your_last".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.headlineLargeBlack900
                                .copyWith(height: 1.20))),
                    SizedBox(height: 28.v),
                    Text("lbl_good".tr,
                        style: CustomTextStyles.titleLargePrimary),
                    SizedBox(height: 15.v),
                    CustomRatingBar(initialRating: 0),
                    SizedBox(height: 64.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_write".tr,
                            style: CustomTextStyles.bodyLargeBlack900_1)),
                    SizedBox(height: 15.v),
                    Divider(color: appTheme.black900.withOpacity(0.2)),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildSubmitButton(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 374.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(26.h, 9.v, 310.h, 9.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
        width: 248.h,
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(left: 65.h, right: 62.h, bottom: 33.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL28);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
