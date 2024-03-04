// ignore_for_file: must_be_immutable

part of 'galileo_design_container_bloc.dart';

/// Represents the state of GalileoDesignContainer in the application.
class GalileoDesignContainerState extends Equatable {
  GalileoDesignContainerState({this.galileoDesignContainerModelObj});

  GalileoDesignContainerModel? galileoDesignContainerModelObj;

  @override
  List<Object?> get props => [
        galileoDesignContainerModelObj,
      ];

  GalileoDesignContainerState copyWith(
      {GalileoDesignContainerModel? galileoDesignContainerModelObj}) {
    return GalileoDesignContainerState(
      galileoDesignContainerModelObj:
          galileoDesignContainerModelObj ?? this.galileoDesignContainerModelObj,
    );
  }
}
