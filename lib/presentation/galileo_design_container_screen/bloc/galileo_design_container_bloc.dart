import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:teeb/presentation/galileo_design_container_screen/models/galileo_design_container_model.dart';
part 'galileo_design_container_event.dart';
part 'galileo_design_container_state.dart';

/// A bloc that manages the state of a GalileoDesignContainer according to the event that is dispatched to it.
class GalileoDesignContainerBloc
    extends Bloc<GalileoDesignContainerEvent, GalileoDesignContainerState> {
  GalileoDesignContainerBloc(GalileoDesignContainerState initialState)
      : super(initialState) {
    on<GalileoDesignContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GalileoDesignContainerInitialEvent event,
    Emitter<GalileoDesignContainerState> emit,
  ) async {}
}
