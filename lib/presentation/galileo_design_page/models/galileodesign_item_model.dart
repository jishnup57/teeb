import '../../../core/app_export.dart';

/// This class is used in the [galileodesign_item_widget] screen.
class GalileodesignItemModel {
  GalileodesignItemModel({
    this.byredo,
    this.byredo1,
    this.roseOfNoManS,
    this.id,
  }) {
    byredo = byredo ?? ImageConstant.imgDepth4Frame0;
    byredo1 = byredo1 ?? "Byredo";
    roseOfNoManS = roseOfNoManS ?? "Rose of No Man's Land";
    id = id ?? "";
  }

  String? byredo;

  String? byredo1;

  String? roseOfNoManS;

  String? id;
}
