import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/galileodesign_item_model.dart';
import 'package:teeb/presentation/galileo_design_page/models/galileo_design_model.dart';
part 'galileo_design_event.dart';
part 'galileo_design_state.dart';

/// A bloc that manages the state of a GalileoDesign according to the event that is dispatched to it.
class GalileoDesignBloc extends Bloc<GalileoDesignEvent, GalileoDesignState> {
  GalileoDesignBloc(GalileoDesignState initialState) : super(initialState) {
    on<GalileoDesignInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<GalileoDesignState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<GalileodesignItemModel> fillGalileodesignItemList() {
    return [
      GalileodesignItemModel(
          byredo: ImageConstant.imgDepth4Frame0,
          byredo1: "Byredo",
          roseOfNoManS: "Rose of No Man's Land"),
      GalileodesignItemModel(
          byredo: ImageConstant.imgDepth4Frame0173x173,
          byredo1: "Le Labo",
          roseOfNoManS: "Santal 33"),
      GalileodesignItemModel(
          byredo: ImageConstant.imgDepth4Frame01,
          byredo1: "Diptyque",
          roseOfNoManS: "Baies"),
      GalileodesignItemModel(
          byredo: ImageConstant.imgDepth4Frame02,
          byredo1: "Tom Ford",
          roseOfNoManS: "Oud Wood"),
      GalileodesignItemModel(
          byredo: ImageConstant.imgDepth4Frame03,
          byredo1: "Jo Malone",
          roseOfNoManS: "Lime Basil & Mandarin"),
      GalileodesignItemModel(
          byredo: ImageConstant.imgDepth4Frame04,
          byredo1: "Maison Margiela",
          roseOfNoManS: "Jazz Club")
    ];
  }

  _onInitialize(
    GalileoDesignInitialEvent event,
    Emitter<GalileoDesignState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        galileoDesignModelObj: state.galileoDesignModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      galileodesignItemList: fillGalileodesignItemList(),
    )));
  }
}
