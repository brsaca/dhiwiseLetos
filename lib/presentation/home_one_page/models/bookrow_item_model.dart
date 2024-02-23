import '../../../core/app_export.dart';

/// This class is used in the [bookrow_item_widget] screen.
class BookrowItemModel {
  BookrowItemModel({
    this.bookTitle,
    this.bookAuthor,
    this.bookPublisher,
    this.bookDatePublished,
    this.bookISBN10,
    this.bookISBN13,
    this.bookFormat,
    this.bookLanguage,
    this.id,
  }) {
    bookTitle = bookTitle ?? "Título del libro";
    bookAuthor = bookAuthor ?? "Autor";
    bookPublisher = bookPublisher ?? "Publisher";
    bookDatePublished = bookDatePublished ?? "Date Published";
    bookISBN10 = bookISBN10 ?? "ISBN";
    bookISBN13 = bookISBN13 ?? "ISBN13";
    bookFormat = bookFormat ?? "Formato";
    bookLanguage = bookLanguage ?? "Lenguaje";
    id = id ?? "";
  }

  String? bookTitle;

  String? bookAuthor;

  String? bookPublisher;

  String? bookDatePublished;

  String? bookISBN10;

  String? bookISBN13;

  String? bookFormat;

  String? bookLanguage;

  String? id;
}
