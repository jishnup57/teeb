// ignore_for_file: must_be_immutable

part of 'galileo_design_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GalileoDesign widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GalileoDesignEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the GalileoDesign widget is first created.
class GalileoDesignInitialEvent extends GalileoDesignEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends GalileoDesignEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
