// ignore_for_file: must_be_immutable

part of 'galileo_design_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GalileoDesignContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GalileoDesignContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the GalileoDesignContainer widget is first created.
class GalileoDesignContainerInitialEvent extends GalileoDesignContainerEvent {
  @override
  List<Object?> get props => [];
}
