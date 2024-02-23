// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'booksavedrow_item_model.dart';

/// This class defines the variables used in the [library_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LibraryModel extends Equatable {
  LibraryModel({this.booksavedrowItemList = const []}) {}

  List<BooksavedrowItemModel> booksavedrowItemList;

  LibraryModel copyWith({List<BooksavedrowItemModel>? booksavedrowItemList}) {
    return LibraryModel(
      booksavedrowItemList: booksavedrowItemList ?? this.booksavedrowItemList,
    );
  }

  @override
  List<Object?> get props => [booksavedrowItemList];
}
