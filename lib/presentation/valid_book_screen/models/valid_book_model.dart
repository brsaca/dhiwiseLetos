// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'photoscollection_item_model.dart';
import 'package:letos/core/app_export.dart';

/// This class defines the variables used in the [valid_book_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ValidBookModel extends Equatable {
  ValidBookModel({
    this.photoscollectionItemList = const [],
    this.dropdownItemList = const [],
  }) {}

  List<PhotoscollectionItemModel> photoscollectionItemList;

  List<SelectionPopupModel> dropdownItemList;

  ValidBookModel copyWith({
    List<PhotoscollectionItemModel>? photoscollectionItemList,
    List<SelectionPopupModel>? dropdownItemList,
  }) {
    return ValidBookModel(
      photoscollectionItemList:
          photoscollectionItemList ?? this.photoscollectionItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [photoscollectionItemList, dropdownItemList];
}
