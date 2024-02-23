// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'bookrow_item_model.dart';

/// This class defines the variables used in the [home_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeOneModel extends Equatable {
  HomeOneModel({this.bookrowItemList = const []}) {}

  List<BookrowItemModel> bookrowItemList;

  HomeOneModel copyWith({List<BookrowItemModel>? bookrowItemList}) {
    return HomeOneModel(
      bookrowItemList: bookrowItemList ?? this.bookrowItemList,
    );
  }

  @override
  List<Object?> get props => [bookrowItemList];
}
