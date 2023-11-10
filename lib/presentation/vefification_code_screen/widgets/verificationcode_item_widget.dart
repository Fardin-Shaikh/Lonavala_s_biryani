import '../models/verificationcode_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/core/app_export.dart';

// ignore: must_be_immutable
class VerificationcodeItemWidget extends StatelessWidget {
  VerificationcodeItemWidget(
    this.verificationcodeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VerificationcodeItemModel verificationcodeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Text(
        verificationcodeItemModelObj.one!,
        style: theme.textTheme.headlineSmall,
      ),
    );
  }
}
