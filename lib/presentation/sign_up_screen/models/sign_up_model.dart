// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:letos/core/app_export.dart';

/// This class defines the variables used in the [sign_up_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpModel extends Equatable {
  SignUpModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  SignUpModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return SignUpModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
