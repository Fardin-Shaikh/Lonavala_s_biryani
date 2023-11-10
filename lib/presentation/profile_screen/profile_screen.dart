import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_text_form_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildArrowLeft(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 13.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_eljad_eendaz".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 8.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_edit_profile".tr,
                                    style: theme.textTheme.bodyMedium)),
                            SizedBox(height: 48.v),
                            Padding(
                                padding: EdgeInsets.only(left: 11.h),
                                child: Text("lbl_full_name".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 13.v),
                            Container(
                                width: 339.h,
                                margin: EdgeInsets.only(left: 2.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.h, vertical: 19.v),
                                decoration: AppDecoration.outlinePrimary5
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Text("lbl_eljad_eendaz".tr,
                                    style:
                                        CustomTextStyles.titleLargeOnPrimary)),
                            SizedBox(height: 27.v),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("lbl_e_mail".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 13.v),
                            _buildPrice(context),
                            SizedBox(height: 24.v),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("lbl_phone_number".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 13.v),
                            Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: BlocSelector<ProfileBloc, ProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.phoneNumberController,
                                    builder: (context, phoneNumberController) {
                                      return CustomTextFormField(
                                          controller: phoneNumberController,
                                          hintText: "msg_1_783_0986_8786".tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeOnPrimary,
                                          textInputAction: TextInputAction.done,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16.h,
                                              vertical: 24.v));
                                    })),
                            SizedBox(height: 5.v)
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return SizedBox(
        height: 222.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 37.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup20),
                          fit: BoxFit.cover)),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 52.v),
                    CustomAppBar(
                        height: 38.v,
                        leadingWidth: double.maxFinite,
                        leading: AppbarLeadingIconbutton(
                            imagePath: ImageConstant.imgArrowLeft,
                            margin: EdgeInsets.only(left: 26.h, right: 311.h),
                            onTap: () {
                              onTapArrowLeft(context);
                            }))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder54),
                  child: Container(
                      height: 108.adaptSize,
                      width: 108.adaptSize,
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.circleBorder54),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 90.adaptSize,
                                width: 90.adaptSize,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage13,
                                          height: 90.adaptSize,
                                          width: 90.adaptSize,
                                          radius: BorderRadius.circular(45.h),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 9.h),
                                              padding: EdgeInsets.all(3.h),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                              child: Container(
                                                  height: 11.adaptSize,
                                                  width: 11.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.h)))))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgCamera,
                            height: 27.adaptSize,
                            width: 27.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 5.h))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Container(
        height: 68.v,
        width: 341.h,
        margin: EdgeInsets.only(left: 2.h),
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: 341.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Text("msg_prelookstudio_gmail_com".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary))),
          Padding(
              padding: EdgeInsets.only(left: 21.h),
              child: BlocSelector<ProfileBloc, ProfileState,
                      TextEditingController?>(
                  selector: (state) => state.priceController,
                  builder: (context, priceController) {
                    return CustomTextFormField(
                        width: 84.h,
                        controller: priceController,
                        hintText: "lbl_1679_30".tr,
                        alignment: Alignment.bottomLeft);
                  }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
