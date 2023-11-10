import 'bloc/add_new_address_bloc.dart';
import 'models/add_new_address_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_outlined_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_text_form_field.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AddNewAddressBloc>(
        create: (context) => AddNewAddressBloc(
            AddNewAddressState(addNewAddressModelObj: AddNewAddressModel()))
          ..add(AddNewAddressInitialEvent()),
        child: AddNewAddressScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_full_name".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 13.v),
                      _buildFullNameEditText(context),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_mobile_number".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 13.v),
                      _buildMobileNumberEditText(context),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_state".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 13.v),
                      _buildEightRow(context),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_city".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 11.v),
                      _buildSelectCityButton(context),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("msg_street_include".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 11.v),
                      _buildStreetEditText(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildSaveButton(context)));
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
        title: AppbarTitle(text: "lbl_add_new_address".tr));
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<AddNewAddressBloc, AddNewAddressState,
                TextEditingController?>(
            selector: (state) => state.fullNameEditTextController,
            builder: (context, fullNameEditTextController) {
              return CustomTextFormField(
                  controller: fullNameEditTextController,
                  hintText: "lbl_arlene_mccoy2".tr,
                  hintStyle: CustomTextStyles.bodyLargeOnPrimary);
            }));
  }

  /// Section Widget
  Widget _buildMobileNumberEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<AddNewAddressBloc, AddNewAddressState,
                TextEditingController?>(
            selector: (state) => state.mobileNumberEditTextController,
            builder: (context, mobileNumberEditTextController) {
              return CustomTextFormField(
                  controller: mobileNumberEditTextController,
                  hintText: "lbl_018_49862746".tr,
                  hintStyle: CustomTextStyles.bodyLargeOnPrimary);
            }));
  }

  /// Section Widget
  Widget _buildEightRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 8.v),
                  child: Text("lbl_slect_state".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary)),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup17961,
                  height: 9.v,
                  width: 5.h,
                  margin: EdgeInsets.only(top: 21.v, right: 7.h))
            ]));
  }

  /// Section Widget
  Widget _buildSelectCityButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 65.v,
        text: "lbl_select_city".tr,
        margin: EdgeInsets.only(left: 2.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGroup17961,
                height: 9.v,
                width: 5.h)),
        buttonStyle: CustomButtonStyles.outlineGray,
        buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary);
  }

  /// Section Widget
  Widget _buildStreetEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<AddNewAddressBloc, AddNewAddressState,
                TextEditingController?>(
            selector: (state) => state.streetEditTextController,
            builder: (context, streetEditTextController) {
              return CustomTextFormField(
                  controller: streetEditTextController,
                  hintText: "lbl_street".tr,
                  hintStyle: CustomTextStyles.bodyLargeGray400,
                  textInputAction: TextInputAction.done);
            }));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        width: 248.h,
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 65.h, right: 62.h, bottom: 33.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL28);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
