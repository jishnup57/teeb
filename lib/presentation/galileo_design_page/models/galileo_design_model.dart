// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:teeb/core/app_export.dart';
import '../../../core/app_export.dart';
import 'galileodesign_item_model.dart';

/// This class defines the variables used in the [galileo_design_page],
/// and is typically used to hold data that is passed between different parts of the application.
class GalileoDesignModel extends Equatable {
  GalileoDesignModel({
    this.dropdownItemList = const [],
    this.galileodesignItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<GalileodesignItemModel> galileodesignItemList;

  GalileoDesignModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<GalileodesignItemModel>? galileodesignItemList,
  }) {
    return GalileoDesignModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      galileodesignItemList:
          galileodesignItemList ?? this.galileodesignItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, galileodesignItemList];
}
