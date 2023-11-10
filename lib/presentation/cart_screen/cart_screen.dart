import '../cart_screen/widgets/foodorderlist_item_widget.dart';
import 'bloc/cart_bloc.dart';
import 'models/cart_model.dart';
import 'models/foodorderlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/appbar_title.dart';
import 'package:lonavala_s_biryani/widgets/app_bar/custom_app_bar.dart';
import 'package:lonavala_s_biryani/widgets/custom_elevated_button.dart';
import 'package:lonavala_s_biryani/widgets/custom_text_form_field.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => CartBloc(CartState(
        cartModelObj: CartModel(),
      ))
        ..add(CartInitialEvent()),
      child: CartScreen(),
    );
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
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              _buildFoodOrderList(context),
              SizedBox(height: 32.v),
              BlocSelector<CartBloc, CartState, TextEditingController?>(
                selector: (state) => state.applyController,
                builder: (context, applyController) {
                  return CustomTextFormField(
                    controller: applyController,
                    hintText: "lbl_apply".tr,
                    hintStyle: CustomTextStyles.bodyLargeWhiteA70001,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 20.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL30,
                  );
                },
              ),
              SizedBox(height: 27.v),
              _buildSubtotalStack(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildCheckoutButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_cart".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodOrderList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: BlocSelector<CartBloc, CartState, CartModel?>(
        selector: (state) => state.cartModelObj,
        builder: (context, cartModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 21.v,
              );
            },
            itemCount: cartModelObj?.foodorderlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              FoodorderlistItemModel model =
                  cartModelObj?.foodorderlistItemList[index] ??
                      FoodorderlistItemModel();
              return FoodorderlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSubtotalStack(BuildContext context) {
    return SizedBox(
      height: 161.v,
      width: 331.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "lbl_total".tr,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTaxAndFees(
                  context,
                  taxAndFees: "lbl_subtotal".tr,
                  price: "lbl_27_30".tr,
                  currency: "lbl_usd".tr,
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 14.v),
                _buildTaxAndFees(
                  context,
                  taxAndFees: "lbl_tax_and_fees".tr,
                  price: "lbl_5_30".tr,
                  currency: "lbl_usd".tr,
                ),
                SizedBox(height: 15.v),
                Divider(),
                SizedBox(height: 13.v),
                _buildTaxAndFees(
                  context,
                  taxAndFees: "lbl_delivery".tr,
                  price: "lbl_1_00".tr,
                  currency: "lbl_usd".tr,
                ),
                SizedBox(height: 13.v),
                Divider(),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 43.h,
                      right: 6.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_2_items".tr,
                            style: CustomTextStyles.bodyMediumGray40001,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "lbl_33_60".tr,
                          style: CustomTextStyles.titleMediumMedium17,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "lbl_usd".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckoutButton(BuildContext context) {
    return CustomElevatedButton(
      height: 57.v,
      width: 248.h,
      text: "lbl_checkout".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 64.h,
        right: 63.h,
        bottom: 31.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
    );
  }

  /// Common widget
  Widget _buildTaxAndFees(
    BuildContext context, {
    required String taxAndFees,
    required String price,
    required String currency,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          taxAndFees,
          style: CustomTextStyles.bodyLargeBlack900.copyWith(
            color: appTheme.black900,
          ),
        ),
        Spacer(),
        Text(
          price,
          style: CustomTextStyles.titleMediumMedium.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 3.h,
            top: 2.v,
            bottom: 2.v,
          ),
          child: Text(
            currency,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }
}
