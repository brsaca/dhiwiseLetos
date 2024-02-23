import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/bookrow_item_model.dart';
import 'package:letos/presentation/home_one_page/models/home_one_model.dart';
part 'home_one_event.dart';
part 'home_one_state.dart';

/// A bloc that manages the state of a HomeOne according to the event that is dispatched to it.
class HomeOneBloc extends Bloc<HomeOneEvent, HomeOneState> {
  HomeOneBloc(HomeOneState initialState) : super(initialState) {
    on<HomeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeOneInitialEvent event,
    Emitter<HomeOneState> emit,
  ) async {
    emit(state.copyWith(
        homeOneModelObj: state.homeOneModelObj?.copyWith(
      bookrowItemList: fillBookrowItemList(),
    )));
  }

  List<BookrowItemModel> fillBookrowItemList() {
    return [
      BookrowItemModel(
          bookTitle: "Título del libro",
          bookAuthor: "Autor",
          bookPublisher: "Publisher",
          bookDatePublished: "Date Published",
          bookISBN10: "ISBN",
          bookISBN13: "ISBN13",
          bookFormat: "Formato",
          bookLanguage: "Lenguaje"),
      BookrowItemModel(
          bookTitle: "Título del libro",
          bookAuthor: "Autor",
          bookPublisher: "Publisher",
          bookDatePublished: "Date Published",
          bookISBN10: "ISBN",
          bookISBN13: "ISBN13",
          bookFormat: "Formato",
          bookLanguage: "Lenguaje"),
      BookrowItemModel(
          bookTitle: "Título del libro",
          bookAuthor: "Autor",
          bookPublisher: "Publisher",
          bookDatePublished: "Date Published",
          bookISBN10: "ISBN",
          bookISBN13: "ISBN13",
          bookFormat: "Formato",
          bookLanguage: "Lenguaje"),
      BookrowItemModel(
          bookTitle: "Título del libro",
          bookAuthor: "Autor",
          bookPublisher: "Publisher",
          bookDatePublished: "Date Published",
          bookISBN10: "ISBN",
          bookISBN13: "ISBN13",
          bookFormat: "Formato",
          bookLanguage: "Lenguaje")
    ];
  }
}
