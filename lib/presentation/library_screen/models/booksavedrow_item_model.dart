import '../../../core/app_export.dart';

/// This class is used in the [booksavedrow_item_widget] screen.
class BooksavedrowItemModel {
  BooksavedrowItemModel({
    this.savedDate,
    this.bookId,
    this.bookPrice,
    this.bookStatus,
    this.bookTitle,
    this.bookAuthor,
    this.bookPublisher,
    this.bookLanguage,
    this.id,
  }) {
    savedDate = savedDate ?? "20/Feb/2024 17:44:23";
    bookId = bookId ?? "LTTH71328659";
    bookPrice = bookPrice ?? "60";
    bookStatus = bookStatus ?? "Nuevo";
    bookTitle = bookTitle ?? "Catcher in the Rye";
    bookAuthor = bookAuthor ?? "J.D. Salinger";
    bookPublisher = bookPublisher ?? "P198.00";
    bookLanguage = bookLanguage ?? "P198.00";
    id = id ?? "";
  }

  String? savedDate;

  String? bookId;

  String? bookPrice;

  String? bookStatus;

  String? bookTitle;

  String? bookAuthor;

  String? bookPublisher;

  String? bookLanguage;

  String? id;
}
