// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [typefilters_item_widget] screen.
class TypefiltersItemModel extends Equatable {
  TypefiltersItemModel({
    this.simpleButton,
    this.isSelected,
  }) {
    simpleButton = simpleButton ?? "Simple";
    isSelected = isSelected ?? false;
  }

  String? simpleButton;

  bool? isSelected;

  TypefiltersItemModel copyWith({
    String? simpleButton,
    bool? isSelected,
  }) {
    return TypefiltersItemModel(
      simpleButton: simpleButton ?? this.simpleButton,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [simpleButton, isSelected];
}
