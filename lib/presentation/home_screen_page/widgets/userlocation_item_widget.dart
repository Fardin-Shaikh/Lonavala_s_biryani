import '../models/userlocation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserlocationItemWidget extends StatelessWidget {
  UserlocationItemWidget(
    this.userlocationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserlocationItemModel userlocationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: EdgeInsets.only(bottom: 10.v),
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 28.v,
                width: 58.h,
                margin: EdgeInsets.only(top: 10.v),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle99,
                      height: 28.v,
                      width: 58.h,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl".tr,
                                style:
                                    CustomTextStyles.bodySmallTTCommonsPrimary9,
                              ),
                              TextSpan(
                                text: "lbl_5_502".tr,
                                style: CustomTextStyles
                                    .titleLargeTTCommonsOnPrimary,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 47.h,
                  top: 10.v,
                ),
                child: CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillWhiteA,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLocationWhiteA70001,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
