import '../models/burger_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';

// ignore: must_be_immutable
class BurgerItemWidget extends StatelessWidget {
  BurgerItemWidget(
    this.burgerItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  BurgerItemModel burgerItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 5.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        burgerItemModelObj.burger!,
        style: TextStyle(
          color: appTheme.blueGray40002,
          fontSize: 12.fSize,
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (burgerItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: appTheme.gray100,
      shape: (burgerItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray40002.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
