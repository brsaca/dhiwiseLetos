import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/photoscollection_item_model.dart';
import 'package:letos/presentation/valid_book_screen/models/valid_book_model.dart';
part 'valid_book_event.dart';
part 'valid_book_state.dart';

/// A bloc that manages the state of a ValidBook according to the event that is dispatched to it.
class ValidBookBloc extends Bloc<ValidBookEvent, ValidBookState> {
  ValidBookBloc(ValidBookState initialState) : super(initialState) {
    on<ValidBookInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ValidBookState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<PhotoscollectionItemModel> fillPhotoscollectionItemList() {
    return List.generate(3, (index) => PhotoscollectionItemModel());
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    ValidBookInitialEvent event,
    Emitter<ValidBookState> emit,
  ) async {
    emit(state.copyWith(
      fiftyController: TextEditingController(),
      fiftyController1: TextEditingController(),
      fortyNineController: TextEditingController(),
      fortyNineController1: TextEditingController(),
      commentsFieldController: TextEditingController(),
      titleFieldController: TextEditingController(),
      autorFieldController: TextEditingController(),
      editorialFieldController: TextEditingController(),
      dimensionsFieldController: TextEditingController(),
      fiftyTwoController: TextEditingController(),
      fiftyTwoController1: TextEditingController(),
      fiftyOneController: TextEditingController(),
      fiftyOneController1: TextEditingController(),
    ));
    emit(state.copyWith(
        validBookModelObj: state.validBookModelObj?.copyWith(
      photoscollectionItemList: fillPhotoscollectionItemList(),
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
