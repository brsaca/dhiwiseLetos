// ignore_for_file: must_be_immutable

part of 'valid_book_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ValidBook widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ValidBookEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ValidBook widget is first created.
class ValidBookInitialEvent extends ValidBookEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ValidBookEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
