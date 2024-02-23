// ignore_for_file: must_be_immutable

part of 'valid_book_bloc.dart';

/// Represents the state of ValidBook in the application.
class ValidBookState extends Equatable {
  ValidBookState({
    this.fiftyController,
    this.fiftyController1,
    this.fortyNineController,
    this.fortyNineController1,
    this.commentsFieldController,
    this.titleFieldController,
    this.autorFieldController,
    this.editorialFieldController,
    this.dimensionsFieldController,
    this.fiftyTwoController,
    this.fiftyTwoController1,
    this.fiftyOneController,
    this.fiftyOneController1,
    this.selectedDropDownValue,
    this.validBookModelObj,
  });

  TextEditingController? fiftyController;

  TextEditingController? fiftyController1;

  TextEditingController? fortyNineController;

  TextEditingController? fortyNineController1;

  TextEditingController? commentsFieldController;

  TextEditingController? titleFieldController;

  TextEditingController? autorFieldController;

  TextEditingController? editorialFieldController;

  TextEditingController? dimensionsFieldController;

  TextEditingController? fiftyTwoController;

  TextEditingController? fiftyTwoController1;

  TextEditingController? fiftyOneController;

  TextEditingController? fiftyOneController1;

  SelectionPopupModel? selectedDropDownValue;

  ValidBookModel? validBookModelObj;

  @override
  List<Object?> get props => [
        fiftyController,
        fiftyController1,
        fortyNineController,
        fortyNineController1,
        commentsFieldController,
        titleFieldController,
        autorFieldController,
        editorialFieldController,
        dimensionsFieldController,
        fiftyTwoController,
        fiftyTwoController1,
        fiftyOneController,
        fiftyOneController1,
        selectedDropDownValue,
        validBookModelObj,
      ];

  ValidBookState copyWith({
    TextEditingController? fiftyController,
    TextEditingController? fiftyController1,
    TextEditingController? fortyNineController,
    TextEditingController? fortyNineController1,
    TextEditingController? commentsFieldController,
    TextEditingController? titleFieldController,
    TextEditingController? autorFieldController,
    TextEditingController? editorialFieldController,
    TextEditingController? dimensionsFieldController,
    TextEditingController? fiftyTwoController,
    TextEditingController? fiftyTwoController1,
    TextEditingController? fiftyOneController,
    TextEditingController? fiftyOneController1,
    SelectionPopupModel? selectedDropDownValue,
    ValidBookModel? validBookModelObj,
  }) {
    return ValidBookState(
      fiftyController: fiftyController ?? this.fiftyController,
      fiftyController1: fiftyController1 ?? this.fiftyController1,
      fortyNineController: fortyNineController ?? this.fortyNineController,
      fortyNineController1: fortyNineController1 ?? this.fortyNineController1,
      commentsFieldController:
          commentsFieldController ?? this.commentsFieldController,
      titleFieldController: titleFieldController ?? this.titleFieldController,
      autorFieldController: autorFieldController ?? this.autorFieldController,
      editorialFieldController:
          editorialFieldController ?? this.editorialFieldController,
      dimensionsFieldController:
          dimensionsFieldController ?? this.dimensionsFieldController,
      fiftyTwoController: fiftyTwoController ?? this.fiftyTwoController,
      fiftyTwoController1: fiftyTwoController1 ?? this.fiftyTwoController1,
      fiftyOneController: fiftyOneController ?? this.fiftyOneController,
      fiftyOneController1: fiftyOneController1 ?? this.fiftyOneController1,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      validBookModelObj: validBookModelObj ?? this.validBookModelObj,
    );
  }
}
