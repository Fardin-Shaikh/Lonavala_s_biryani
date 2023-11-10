import '../models/fooditem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';

// ignore: must_be_immutable
class FooditemItemWidget extends StatelessWidget {
  FooditemItemWidget(
    this.fooditemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FooditemItemModel fooditemItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBluegray1002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180.v,
            width: 323.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 165.v,
                    width: 323.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: fooditemItemModelObj?.price,
                          height: 165.v,
                          width: 323.h,
                          radius: BorderRadius.circular(
                            18.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(13.h, 12.v, 13.h, 118.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 34.v,
                                  width: 81.h,
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgRectangle99,
                                        height: 34.v,
                                        width: 81.h,
                                        radius: BorderRadius.circular(
                                          17.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallTTCommonsPrimary,
                                                ),
                                                TextSpan(
                                                  text: "lbl_12_202".tr,
                                                  style: CustomTextStyles
                                                      .headlineSmallTTCommonsOnPrimary,
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
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup17481,
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 29.v,
                    width: 71.h,
                    margin: EdgeInsets.only(left: 13.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 29.v,
                            width: 71.h,
                            decoration: BoxDecoration(
                              color: appTheme.whiteA70001,
                              borderRadius: BorderRadius.circular(
                                14.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: theme.colorScheme.primary
                                      .withOpacity(0.2),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    6.07,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 9.v),
                                child: Text(
                                  fooditemItemModelObj.fortyFive!,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPath3389,
                                height: 9.v,
                                width: 10.h,
                                margin: EdgeInsets.only(
                                  left: 4.h,
                                  top: 2.v,
                                  bottom: 9.v,
                                ),
                              ),
                              Container(
                                width: 16.h,
                                margin: EdgeInsets.only(left: 3.h),
                                child: Text(
                                  fooditemItemModelObj.twentyFive!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmall8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              fooditemItemModelObj.name!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              fooditemItemModelObj.description!,
              style: CustomTextStyles.bodyMediumErrorContainer_1,
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
