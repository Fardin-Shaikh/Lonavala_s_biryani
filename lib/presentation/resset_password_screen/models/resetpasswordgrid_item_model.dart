/// This class is used in the [resetpasswordgrid_item_widget] screen.
class ResetpasswordgridItemModel {
  ResetpasswordgridItemModel({
    this.one,
    this.id,
  }) {
    one = one ?? "1";
    id = id ?? "";
  }

  String? one;

  String? id;
}
