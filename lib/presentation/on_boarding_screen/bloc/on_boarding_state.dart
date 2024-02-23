// ignore_for_file: must_be_immutable

part of 'on_boarding_bloc.dart';

/// Represents the state of OnBoarding in the application.
class OnBoardingState extends Equatable {
  OnBoardingState({this.onBoardingModelObj});

  OnBoardingModel? onBoardingModelObj;

  @override
  List<Object?> get props => [
        onBoardingModelObj,
      ];

  OnBoardingState copyWith({OnBoardingModel? onBoardingModelObj}) {
    return OnBoardingState(
      onBoardingModelObj: onBoardingModelObj ?? this.onBoardingModelObj,
    );
  }
}
