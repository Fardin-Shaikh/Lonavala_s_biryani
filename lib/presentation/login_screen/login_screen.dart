import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/core/utils/validation_functions.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 94.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_login".tr,
                                  style: theme.textTheme.displaySmall)),
                          SizedBox(height: 28.v),
                          _buildLoginStack(context),
                          SizedBox(height: 24.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_password".tr,
                                      style: theme.textTheme.bodyLarge))),
                          SizedBox(height: 13.v),
                          _buildPasswordField(context),
                          SizedBox(height: 32.v),
                          Text("msg_forgot_password".tr,
                              style: CustomTextStyles.bodyMediumPrimary),
                          SizedBox(height: 27.v),
                          _buildLoginButton(context),
                          SizedBox(height: 32.v),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
                                    style: CustomTextStyles
                                        .bodyMediumErrorContainer),
                                TextSpan(
                                    text: "lbl_sign_up".tr,
                                    style: CustomTextStyles.bodyMediumPrimary_1)
                              ]),
                              textAlign: TextAlign.left),
                          _buildSignInWithStack(context)
                        ]))),
            bottomNavigationBar: _buildFACEBOOK(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 75.v,
        leadingWidth: 160.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgEllipse12675x50,
            margin: EdgeInsets.only(right: 110.h)),
        title: SizedBox(
            height: 75.v,
            width: 160.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              AppbarLeadingImage(
                  imagePath: ImageConstant.imgEllipse12675x50,
                  margin: EdgeInsets.only(right: 110.h)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgEllipse12766x160,
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
              imagePath: ImageConstant.imgEllipse12872x77,
              margin: EdgeInsets.only(bottom: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, TextEditingController?>(
        selector: (state) => state.emailFieldController,
        builder: (context, emailFieldController) {
          return CustomTextFormField(
              controller: emailFieldController,
              hintText: "msg_your_email_or_phone".tr,
              hintStyle: CustomTextStyles.bodyLargeGray400,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPriceField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h),
        child: BlocSelector<LoginBloc, LoginState, TextEditingController?>(
            selector: (state) => state.priceFieldController,
            builder: (context, priceFieldController) {
              return CustomTextFormField(
                  width: 84.h,
                  controller: priceFieldController,
                  hintText: "lbl_1679_30".tr,
                  alignment: Alignment.bottomLeft);
            }));
  }

  /// Section Widget
  Widget _buildLoginStack(BuildContext context) {
    return SizedBox(
        height: 97.v,
        width: 324.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text("lbl_e_mail".tr,
                            style: theme.textTheme.bodyLarge)),
                    SizedBox(height: 10.v),
                    _buildEmailField(context)
                  ])),
          _buildPriceField(context)
        ]));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return CustomTextFormField(
          controller: state.passwordFieldController,
          hintText: "lbl_password".tr,
          hintStyle: CustomTextStyles.bodyLargeGray400,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
              onTap: () {
                context.read<LoginBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 25.v, 22.h, 27.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 12.v,
                      width: 17.h))),
          suffixConstraints: BoxConstraints(maxHeight: 65.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword,
          contentPadding: EdgeInsets.only(left: 20.h, top: 24.v, bottom: 24.v));
    });
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_login".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 41.h, right: 38.h));
  }

  /// Section Widget
  Widget _buildSignInWithStack(BuildContext context) {
    return Container(
        height: 14.v,
        width: 324.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Text("lbl_sign_in_with2".tr,
                  style: CustomTextStyles.titleSmallErrorContainer)),
          CustomImageView(
              imagePath: ImageConstant.imgGroup17868Gray40002,
              height: 1.v,
              width: 324.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildFacebookButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            height: 57.v,
            text: "lbl_facebook".tr,
            margin: EdgeInsets.only(right: 15.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 9.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook,
                    height: 39.v,
                    width: 38.h)),
            buttonStyle: CustomButtonStyles.outlineBlueGrayTL28,
            buttonTextStyle: CustomTextStyles.bodyMediumBlack90013));
  }

  /// Section Widget
  Widget _buildGoogleButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            height: 57.v,
            text: "lbl_google".tr,
            margin: EdgeInsets.only(left: 15.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 14.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            buttonStyle: CustomButtonStyles.outlineBlueGrayTL28,
            buttonTextStyle: CustomTextStyles.bodyMediumBlack90013));
  }

  /// Section Widget
  Widget _buildFACEBOOK(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 28.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildFacebookButton(context),
          _buildGoogleButton(context)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
