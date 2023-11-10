import 'bloc/phone_registration_bloc.dart';
import 'models/phone_registration_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_text_form_field.dart';

class PhoneRegistrationScreen extends StatelessWidget {
  const PhoneRegistrationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PhoneRegistrationBloc>(
        create: (context) => PhoneRegistrationBloc(PhoneRegistrationState(
            phoneRegistrationModelObj: PhoneRegistrationModel()))
          ..add(PhoneRegistrationInitialEvent()),
        child: PhoneRegistrationScreen());
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
                padding: EdgeInsets.only(left: 25.h, top: 108.v, right: 25.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_registration".tr,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 13.v),
                      Container(
                          width: 217.h,
                          margin: EdgeInsets.only(left: 1.h),
                          child: Text("msg_enter_your_phone".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.38))),
                      SizedBox(height: 28.v),
                      BlocSelector<PhoneRegistrationBloc,
                              PhoneRegistrationState, TextEditingController?>(
                          selector: (state) => state.phoneNumberController,
                          builder: (context, phoneNumberController) {
                            return CustomTextFormField(
                                controller: phoneNumberController,
                                hintText: "msg_1_230_333_0181".tr,
                                hintStyle: CustomTextStyles.bodyLargeOnPrimary,
                                textInputAction: TextInputAction.done,
                                prefix: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        16.01.h, 17.v, 30.h, 18.v),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imageNotFound,
                                              height: 30.v,
                                              width: 49.h,
                                              radius:
                                                  BorderRadius.circular(4.h),
                                              margin: EdgeInsets.fromLTRB(
                                                  16.01.h, 17.v, 30.h, 18.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imageNotFound,
                                              height: 5.v,
                                              width: 10.h)
                                        ])),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 65.v),
                                contentPadding: EdgeInsets.only(
                                    top: 24.v, right: 30.h, bottom: 24.v));
                          }),
                      SizedBox(height: 51.v),
                      CustomElevatedButton(
                          text: "lbl_send".tr,
                          margin: EdgeInsets.only(left: 40.h, right: 37.h),
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 75.v,
        leadingWidth: 160.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgEllipse1263,
            margin: EdgeInsets.only(right: 110.h)),
        title: SizedBox(
            height: 75.v,
            width: 160.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              AppbarLeadingImage(
                  imagePath: ImageConstant.imgEllipse1263,
                  margin: EdgeInsets.only(right: 110.h)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgEllipse1273,
                  margin: EdgeInsets.only(bottom: 9.v)),
              AppbarTitleIconbutton(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 27.h, top: 37.v, right: 95.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  })
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEllipse1283,
              margin: EdgeInsets.only(bottom: 3.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
