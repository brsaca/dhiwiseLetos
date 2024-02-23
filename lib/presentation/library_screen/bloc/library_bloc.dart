import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/booksavedrow_item_model.dart';
import 'package:letos/presentation/library_screen/models/library_model.dart';
part 'library_event.dart';
part 'library_state.dart';

/// A bloc that manages the state of a Library according to the event that is dispatched to it.
class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc(LibraryState initialState) : super(initialState) {
    on<LibraryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryInitialEvent event,
    Emitter<LibraryState> emit,
  ) async {
    emit(state.copyWith(
        libraryModelObj: state.libraryModelObj
            ?.copyWith(booksavedrowItemList: fillBooksavedrowItemList())));
  }

  List<BooksavedrowItemModel> fillBooksavedrowItemList() {
    return [
      BooksavedrowItemModel(
          savedDate: "20/Feb/2024 17:44:23",
          bookId: "LTTH71328659",
          bookPrice: "60",
          bookStatus: "Nuevo",
          bookTitle: "Catcher in the Rye",
          bookAuthor: "J.D. Salinger",
          bookPublisher: "P198.00",
          bookLanguage: "P198.00"),
      BooksavedrowItemModel(
          savedDate: "20/Feb/2024 17:44:23",
          bookId: "LTTH71328659",
          bookPrice: "60",
          bookStatus: "Nuevo",
          bookTitle: "Catcher in the Rye",
          bookAuthor: "J.D. Salinger",
          bookPublisher: "P198.00",
          bookLanguage: "P198.00")
    ];
  }
}
