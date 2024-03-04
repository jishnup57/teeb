// ignore_for_file: must_be_immutable

part of 'galileo_design_bloc.dart';

/// Represents the state of GalileoDesign in the application.
class GalileoDesignState extends Equatable {
  GalileoDesignState({
    this.searchController,
    this.selectedDropDownValue,
    this.galileoDesignModelObj,
  });

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  GalileoDesignModel? galileoDesignModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectedDropDownValue,
        galileoDesignModelObj,
      ];

  GalileoDesignState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    GalileoDesignModel? galileoDesignModelObj,
  }) {
    return GalileoDesignState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      galileoDesignModelObj:
          galileoDesignModelObj ?? this.galileoDesignModelObj,
    );
  }
}
