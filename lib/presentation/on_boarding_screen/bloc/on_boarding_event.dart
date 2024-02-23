// ignore_for_file: must_be_immutable

part of 'on_boarding_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnBoarding widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnBoardingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OnBoarding widget is first created.
class OnBoardingInitialEvent extends OnBoardingEvent {
  @override
  List<Object?> get props => [];
}
