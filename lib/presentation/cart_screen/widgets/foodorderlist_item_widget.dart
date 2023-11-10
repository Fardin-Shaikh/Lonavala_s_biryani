import '../models/foodorderlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FoodorderlistItemWidget extends StatelessWidget {
  FoodorderlistItemWidget(
    this.foodorderlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FoodorderlistItemModel foodorderlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 82.adaptSize,
          width: 82.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v),
          decoration: AppDecoration.outlineLightGreenE,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: foodorderlistItemModelObj?.foodImage,
                height: 81.v,
                width: 82.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: foodorderlistItemModelObj?.foodName,
                height: 82.adaptSize,
                width: 82.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.v),
          child: Column(
            children: [
              Container(
                width: 222.h,
                margin: EdgeInsets.only(right: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodorderlistItemModelObj.foodName1!,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          foodorderlistItemModelObj.foodDescription!,
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCloseDeepOrangeA400,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 20.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 225.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 2.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        foodorderlistItemModelObj.foodPrice!,
                        style: CustomTextStyles.titleMediumPrimary16,
                      ),
                    ),
                    Spacer(),
                    CustomIconButton(
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      padding: EdgeInsets.all(9.h),
                      decoration: IconButtonStyleHelper.outlinePrimaryTL15,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup17841,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        foodorderlistItemModelObj.quantity!,
                        style: CustomTextStyles.titleMedium16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: CustomIconButton(
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.outlinePrimary,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFacebookWhiteA70001,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
