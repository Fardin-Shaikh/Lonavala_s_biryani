import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/core/utils/validation_functions.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildWidgetStack(context),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "lbl_sign_up".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "lbl_full_name".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                _buildFullNameEditText(context),
                SizedBox(height: 27.v),
                _buildEmailStack(context),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 29.h),
                    child: Text(
                      "lbl_password".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                _buildPasswordEditText(context),
                SizedBox(height: 33.v),
                _buildSignupButton(context),
                SizedBox(height: 33.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_already_have_an".tr,
                        style: CustomTextStyles.bodyMediumErrorContainer,
                      ),
                      TextSpan(
                        text: "lbl_login".tr,
                        style: CustomTextStyles.bodyMediumPrimary_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 50.v),
                _buildSignupWithStack(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildFACEBOOK(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetStack(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 75.v,
            width: 160.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse126,
                  height: 75.v,
                  width: 50.h,
                  alignment: Alignment.centerLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse127,
                  height: 66.v,
                  width: 160.h,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse128,
            height: 72.v,
            width: 77.h,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 24.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.fullNameEditTextController,
        builder: (context, fullNameEditTextController) {
          return CustomTextFormField(
            controller: fullNameEditTextController,
            hintText: "lbl_arlene_mccoy".tr,
            hintStyle: CustomTextStyles.titleMediumOnPrimary,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.emailEditTextController,
      builder: (context, emailEditTextController) {
        return CustomTextFormField(
          controller: emailEditTextController,
          hintText: "msg_prelookstudio_gmail_com".tr,
          hintStyle: CustomTextStyles.bodyLargeOnPrimary18,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailPriceEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.emailPriceEditTextController,
        builder: (context, emailPriceEditTextController) {
          return CustomTextFormField(
            width: 84.h,
            controller: emailPriceEditTextController,
            hintText: "lbl_1679_30".tr,
            alignment: Alignment.bottomLeft,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailStack(BuildContext context) {
    return SizedBox(
      height: 97.v,
      width: 324.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_e_mail".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildEmailEditText(context),
              ],
            ),
          ),
          _buildEmailPriceEditText(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 24.h,
      ),
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordEditTextController,
            textInputAction: TextInputAction.done,
            suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 25.v, 22.h, 27.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 12.v,
                  width: 17.h,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 65.v,
            ),
            obscureText: state.isShowPassword,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
      width: 248.h,
      text: "lbl_sign_up2".tr,
    );
  }

  /// Section Widget
  Widget _buildSignupWithStack(BuildContext context) {
    return Container(
      height: 14.v,
      width: 324.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_sign_up_with".tr,
              style: CustomTextStyles.titleSmallErrorContainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup17868Gray40002,
            height: 1.v,
            width: 324.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 4.v),
          ),
        ],
      ),
    );
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
            width: 38.h,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL28,
        buttonTextStyle: CustomTextStyles.bodyMediumBlack90013,
      ),
    );
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
            width: 30.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL28,
        buttonTextStyle: CustomTextStyles.bodyMediumBlack90013,
      ),
    );
  }

  /// Section Widget
  Widget _buildFACEBOOK(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 28.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFacebookButton(context),
          _buildGoogleButton(context),
        ],
      ),
    );
  }
}
