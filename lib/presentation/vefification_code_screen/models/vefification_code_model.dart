// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'verificationcode_item_model.dart';

/// This class defines the variables used in the [vefification_code_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VefificationCodeModel extends Equatable {
  VefificationCodeModel({this.verificationcodeItemList = const []}) {}

  List<VerificationcodeItemModel> verificationcodeItemList;

  VefificationCodeModel copyWith(
      {List<VerificationcodeItemModel>? verificationcodeItemList}) {
    return VefificationCodeModel(
      verificationcodeItemList:
          verificationcodeItemList ?? this.verificationcodeItemList,
    );
  }

  @override
  List<Object?> get props => [verificationcodeItemList];
}
