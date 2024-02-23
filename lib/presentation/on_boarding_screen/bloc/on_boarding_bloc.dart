import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:letos/presentation/on_boarding_screen/models/on_boarding_model.dart';
part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

/// A bloc that manages the state of a OnBoarding according to the event that is dispatched to it.
class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc(OnBoardingState initialState) : super(initialState) {
    on<OnBoardingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnBoardingInitialEvent event,
    Emitter<OnBoardingState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.logInScreen,
      );
    });
  }
}
