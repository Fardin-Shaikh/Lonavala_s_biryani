import 'bloc/side_menu_bloc.dart';
import 'models/side_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/custom_radio_button.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SideMenuBloc>(
      create: (context) => SideMenuBloc(SideMenuState(
        sideMenuModelObj: SideMenuModel(),
      ))
        ..add(SideMenuInitialEvent()),
      child: SideMenuScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 32.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage13,
                          height: 90.adaptSize,
                          width: 90.adaptSize,
                          radius: BorderRadius.circular(
                            45.h,
                          ),
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        SizedBox(height: 18.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_farion_wick".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "msg_farionwick_gmail_com".tr,
                            style: CustomTextStyles.bodyMediumBluegray300,
                          ),
                        ),
                        SizedBox(height: 42.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                top: 4.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "lbl_my_orders".tr,
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 33.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                top: 4.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "lbl_my_profile".tr,
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 33.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                top: 4.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "msg_delivery_address".tr,
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 33.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconlyBulkWallet,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                top: 4.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "lbl_payment_methods".tr,
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 33.v),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconlyBulkMessage,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                top: 2.v,
                                bottom: 4.v,
                              ),
                              child: Text(
                                "lbl_contact_us".tr,
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 33.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconlyBulkSetting,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                top: 4.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "lbl_settings".tr,
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 33.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgQuestion,
                              height: 19.adaptSize,
                              width: 19.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 15.h,
                                top: 2.v,
                              ),
                              child: Text(
                                "lbl_helps_faqs".tr,
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        _buildLogOutSection(context),
                      ],
                    ),
                    Container(
                      height: 608.v,
                      width: 153.h,
                      margin: EdgeInsets.only(
                        top: 64.v,
                        bottom: 71.v,
                      ),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRestutrntProfile,
                              height: 514.v,
                              width: 153.h,
                              radius: BorderRadius.circular(
                                21.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgHomeScreendd1,
                            height: 604.v,
                            width: 119.h,
                            alignment: Alignment.centerRight,
                          ),
                          Opacity(
                            opacity: 0.85,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgHomeScreen2,
                              height: 608.v,
                              width: 120.h,
                              radius: BorderRadius.circular(
                                28.h,
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogOutSection(BuildContext context) {
    return BlocSelector<SideMenuBloc, SideMenuState, String?>(
      selector: (state) => state.radioGroup,
      builder: (context, radioGroup) {
        return CustomRadioButton(
          text: "lbl_log_out".tr,
          value: "lbl_log_out".tr ?? "",
          groupValue: radioGroup,
          padding: EdgeInsets.fromLTRB(9.h, 11.v, 14.h, 11.v),
          onChange: (value) {
            context
                .read<SideMenuBloc>()
                .add(ChangeRadioButtonEvent(value: value));
          },
        );
      },
    );
  }
}
