import '../resset_password_screen/widgets/resetpasswordgrid_item_widget.dart';
import 'bloc/resset_password_bloc.dart';
import 'models/resetpasswordgrid_item_model.dart';
import 'models/resset_password_model.dart';
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
class RessetPasswordScreen extends StatelessWidget {
  RessetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RessetPasswordBloc>(
        create: (context) => RessetPasswordBloc(
            RessetPasswordState(ressetPasswordModelObj: RessetPasswordModel()))
          ..add(RessetPasswordInitialEvent()),
        child: RessetPasswordScreen());
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
                        EdgeInsets.symmetric(horizontal: 6.h, vertical: 46.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 58.v),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Text("lbl_resset_password".tr,
                                  style: theme.textTheme.displaySmall)),
                          SizedBox(height: 17.v),
                          Container(
                              width: 220.h,
                              margin: EdgeInsets.only(left: 20.h),
                              child: Text("msg_please_enter_your".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium!
                                      .copyWith(height: 1.38))),
                          SizedBox(height: 28.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: BlocSelector<
                                      RessetPasswordBloc,
                                      RessetPasswordState,
                                      TextEditingController?>(
                                  selector: (state) => state.passwordController,
                                  builder: (context, passwordController) {
                                    return CustomTextFormField(
                                        controller: passwordController,
                                        hintText:
                                            "msg_prelookstudio_gmail_com".tr,
                                        hintStyle: CustomTextStyles
                                            .bodyLargeOnPrimary18,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        alignment: Alignment.center,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_email"
                                                .tr;
                                          }
                                          return null;
                                        });
                                  })),
                          SizedBox(height: 51.v),
                          CustomElevatedButton(
                              width: 248.h,
                              text: "msg_send_new_password".tr,
                              alignment: Alignment.center),
                          SizedBox(height: 82.v),
                          _buildResetPasswordGrid(context),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 44.h),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomElevatedButton(
                                            height: 46.v,
                                            width: 117.h,
                                            text: "lbl_0".tr,
                                            buttonStyle: CustomButtonStyles
                                                .outlineBlueGrayTL5,
                                            buttonTextStyle:
                                                theme.textTheme.headlineSmall!),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgDelete,
                                            height: 18.v,
                                            width: 22.h,
                                            margin: EdgeInsets.only(
                                                left: 55.h,
                                                top: 13.v,
                                                bottom: 15.v))
                                      ])))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 75.v,
        leadingWidth: 160.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgEllipse1262,
            margin: EdgeInsets.only(right: 110.h)),
        title: SizedBox(
            height: 75.v,
            width: 160.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              AppbarLeadingImage(
                  imagePath: ImageConstant.imgEllipse1262,
                  margin: EdgeInsets.only(right: 110.h)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgEllipse1272,
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
              imagePath: ImageConstant.imgEllipse1282,
              margin: EdgeInsets.only(bottom: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildResetPasswordGrid(BuildContext context) {
    return BlocSelector<RessetPasswordBloc, RessetPasswordState,
            RessetPasswordModel?>(
        selector: (state) => state.ressetPasswordModelObj,
        builder: (context, ressetPasswordModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 47.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6.h,
                  crossAxisSpacing: 6.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  ressetPasswordModelObj?.resetpasswordgridItemList.length ?? 0,
              itemBuilder: (context, index) {
                ResetpasswordgridItemModel model =
                    ressetPasswordModelObj?.resetpasswordgridItemList[index] ??
                        ResetpasswordgridItemModel();
                return ResetpasswordgridItemWidget(model);
              });
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
