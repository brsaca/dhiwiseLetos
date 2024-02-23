// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'typefilters_item_model.dart';

/// This class defines the variables used in the [modalfilters_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ModalfiltersModel extends Equatable {
  ModalfiltersModel({this.typefiltersItemList = const []}) {}

  List<TypefiltersItemModel> typefiltersItemList;

  ModalfiltersModel copyWith(
      {List<TypefiltersItemModel>? typefiltersItemList}) {
    return ModalfiltersModel(
      typefiltersItemList: typefiltersItemList ?? this.typefiltersItemList,
    );
  }

  @override
  List<Object?> get props => [typefiltersItemList];
}
