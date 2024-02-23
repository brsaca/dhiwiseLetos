import '../../../core/app_export.dart';

/// This class is used in the [bookdetailgrid_item_widget] screen.
class BookdetailgridItemModel {
  BookdetailgridItemModel({
    this.bookImage,
    this.bookStatus,
    this.bookTitle,
    this.bookAuthor,
    this.bookPrice,
    this.id,
  }) {
    bookImage = bookImage ?? ImageConstant.imgBookimage;
    bookStatus = bookStatus ?? "NUEVO";
    bookTitle = bookTitle ?? "Título";
    bookAuthor = bookAuthor ?? "Autor";
    bookPrice = bookPrice ?? "60";
    id = id ?? "";
  }

  String? bookImage;

  String? bookStatus;

  String? bookTitle;

  String? bookAuthor;

  String? bookPrice;

  String? id;
}
