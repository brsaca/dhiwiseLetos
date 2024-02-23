// ignore_for_file: must_be_immutable

part of 'book_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookDetailEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BookDetail widget is first created.
class BookDetailInitialEvent extends BookDetailEvent {
  @override
  List<Object?> get props => [];
}
