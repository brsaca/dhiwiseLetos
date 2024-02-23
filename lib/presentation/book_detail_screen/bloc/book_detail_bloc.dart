import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:letos/presentation/book_detail_screen/models/book_detail_model.dart';
part 'book_detail_event.dart';
part 'book_detail_state.dart';

/// A bloc that manages the state of a BookDetail according to the event that is dispatched to it.
class BookDetailBloc extends Bloc<BookDetailEvent, BookDetailState> {
  BookDetailBloc(BookDetailState initialState) : super(initialState) {
    on<BookDetailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookDetailInitialEvent event,
    Emitter<BookDetailState> emit,
  ) async {}
}
