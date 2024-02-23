import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:letos/presentation/home_one_container_screen/models/home_one_container_model.dart';
part 'home_one_container_event.dart';
part 'home_one_container_state.dart';

/// A bloc that manages the state of a HomeOneContainer according to the event that is dispatched to it.
class HomeOneContainerBloc
    extends Bloc<HomeOneContainerEvent, HomeOneContainerState> {
  HomeOneContainerBloc(HomeOneContainerState initialState)
      : super(initialState) {
    on<HomeOneContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeOneContainerInitialEvent event,
    Emitter<HomeOneContainerState> emit,
  ) async {}
}
