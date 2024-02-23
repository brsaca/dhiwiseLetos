// ignore_for_file: must_be_immutable

part of 'home_one_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeOneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeOneContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeOneContainer widget is first created.
class HomeOneContainerInitialEvent extends HomeOneContainerEvent {
  @override
  List<Object?> get props => [];
}
