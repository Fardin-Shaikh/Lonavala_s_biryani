// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'resetpasswordgrid_item_model.dart';

/// This class defines the variables used in the [resset_password_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RessetPasswordModel extends Equatable {
  RessetPasswordModel({this.resetpasswordgridItemList = const []}) {}

  List<ResetpasswordgridItemModel> resetpasswordgridItemList;

  RessetPasswordModel copyWith(
      {List<ResetpasswordgridItemModel>? resetpasswordgridItemList}) {
    return RessetPasswordModel(
      resetpasswordgridItemList:
          resetpasswordgridItemList ?? this.resetpasswordgridItemList,
    );
  }

  @override
  List<Object?> get props => [resetpasswordgridItemList];
}
