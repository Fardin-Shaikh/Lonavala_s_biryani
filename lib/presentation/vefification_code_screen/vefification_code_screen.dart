import '../vefification_code_screen/widgets/verificationcode_item_widget.dart';
import 'bloc/vefification_code_bloc.dart';
import 'models/vefification_code_model.dart';
import 'models/verificationcode_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_pin_code_text_field.dart';

class VefificationCodeScreen extends StatelessWidget {
  const VefificationCodeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<VefificationCodeBloc>(
        create: (context) => VefificationCodeBloc(VefificationCodeState(
            vefificationCodeModelObj: VefificationCodeModel()))
          ..add(VefificationCodeInitialEvent()),
        child: VefificationCodeScreen());
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
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 45.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 59.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("msg_vefification_code".tr,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 15.v),
                      Container(
                          width: 254.h,
                          margin: EdgeInsets.only(left: 20.h, right: 88.h),
                          child: Text("msg_please_type_the".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.38))),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h, right: 22.h),
                          child: BlocSelector<
                                  VefificationCodeBloc,
                                  VefificationCodeState,
                                  TextEditingController?>(
                              selector: (state) => state.otpController,
                              builder: (context, otpController) {
                                return CustomPinCodeTextField(
                                    context: context,
                                    controller: otpController,
                                    onChanged: (value) {
                                      otpController?.text = value;
                                    });
                              })),
                      SizedBox(height: 30.v),
                      Align(
                          alignment: Alignment.center,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_i_don_t_recevie2".tr,
                                    style: CustomTextStyles
                                        .titleMediumErrorContainer),
                                TextSpan(
                                    text: "lbl_please_resend".tr,
                                    style: CustomTextStyles.titleMediumPrimary)
                              ]),
                              textAlign: TextAlign.left)),
                      Spacer(),
                      _buildVerificationCode(context),
                      SizedBox(height: 7.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 44.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 75.v,
        leadingWidth: 160.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgEllipse1261,
            margin: EdgeInsets.only(right: 110.h)),
        title: SizedBox(
            height: 75.v,
            width: 160.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              AppbarLeadingImage(
                  imagePath: ImageConstant.imgEllipse1261,
                  margin: EdgeInsets.only(right: 110.h)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgEllipse1271,
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
              imagePath: ImageConstant.imgEllipse1281,
              margin: EdgeInsets.only(bottom: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildVerificationCode(BuildContext context) {
    return BlocSelector<VefificationCodeBloc, VefificationCodeState,
            VefificationCodeModel?>(
        selector: (state) => state.vefificationCodeModelObj,
        builder: (context, vefificationCodeModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 47.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6.h,
                  crossAxisSpacing: 6.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  vefificationCodeModelObj?.verificationcodeItemList.length ??
                      0,
              itemBuilder: (context, index) {
                VerificationcodeItemModel model =
                    vefificationCodeModelObj?.verificationcodeItemList[index] ??
                        VerificationcodeItemModel();
                return VerificationcodeItemWidget(model);
              });
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
