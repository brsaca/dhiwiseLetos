// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'bookdetailgrid_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({this.bookdetailgridItemList = const []}) {}

  List<BookdetailgridItemModel> bookdetailgridItemList;

  HomeModel copyWith({List<BookdetailgridItemModel>? bookdetailgridItemList}) {
    return HomeModel(
      bookdetailgridItemList:
          bookdetailgridItemList ?? this.bookdetailgridItemList,
    );
  }

  @override
  List<Object?> get props => [bookdetailgridItemList];
}
