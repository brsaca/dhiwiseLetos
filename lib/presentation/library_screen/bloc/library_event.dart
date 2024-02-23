// ignore_for_file: must_be_immutable

part of 'library_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Library widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Library widget is first created.
class LibraryInitialEvent extends LibraryEvent {
  @override
  List<Object?> get props => [];
}
