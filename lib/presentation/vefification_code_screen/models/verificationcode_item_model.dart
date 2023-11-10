/// This class is used in the [verificationcode_item_widget] screen.
class VerificationcodeItemModel {
  VerificationcodeItemModel({
    this.one,
    this.id,
  }) {
    one = one ?? "1";
    id = id ?? "";
  }

  String? one;

  String? id;
}
