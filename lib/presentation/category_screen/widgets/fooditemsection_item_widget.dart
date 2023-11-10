import '../models/fooditemsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';

// ignore: must_be_immutable
class FooditemsectionItemWidget extends StatelessWidget {
  FooditemsectionItemWidget(
    this.fooditemsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FooditemsectionItemModel fooditemsectionItemModelObj;

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
            height: 179.v,
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
                          imagePath: fooditemsectionItemModelObj?.price,
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
                                EdgeInsets.fromLTRB(12.h, 12.v, 12.h, 119.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 72.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 9.h,
                                    vertical: 5.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlinePrimary3.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl".tr,
                                          style: CustomTextStyles
                                              .titleMediumPrimary_1,
                                        ),
                                        TextSpan(
                                          text: "lbl_10_352".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnPrimary_2,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
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
                    margin: EdgeInsets.only(
                      left: 13.h,
                      top: 150.v,
                      right: 238.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.outlineBluegray1003.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            fooditemsectionItemModelObj.ratingText!,
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
                            bottom: 1.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 3.v,
                            bottom: 1.v,
                          ),
                          child: Text(
                            fooditemsectionItemModelObj.ratingPlusText!,
                            style: CustomTextStyles.bodySmall8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              fooditemsectionItemModelObj.name!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              fooditemsectionItemModelObj.description!,
              style: CustomTextStyles.bodyMediumErrorContainer_1,
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }
}
