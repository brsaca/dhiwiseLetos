import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/typefilters_item_model.dart';
import 'package:letos/presentation/modalfilters_screen/models/modalfilters_model.dart';
part 'modalfilters_event.dart';
part 'modalfilters_state.dart';

/// A bloc that manages the state of a Modalfilters according to the event that is dispatched to it.
class ModalfiltersBloc extends Bloc<ModalfiltersEvent, ModalfiltersState> {
  ModalfiltersBloc(ModalfiltersState initialState) : super(initialState) {
    on<ModalfiltersInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ModalfiltersState> emit,
  ) {
    List<TypefiltersItemModel> newList = List<TypefiltersItemModel>.from(
        state.modalfiltersModelObj!.typefiltersItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        modalfiltersModelObj: state.modalfiltersModelObj
            ?.copyWith(typefiltersItemList: newList)));
  }

  List<TypefiltersItemModel> fillTypefiltersItemList() {
    return List.generate(2, (index) => TypefiltersItemModel());
  }

  _onInitialize(
    ModalfiltersInitialEvent event,
    Emitter<ModalfiltersState> emit,
  ) async {
    emit(state.copyWith(
      authorController: TextEditingController(),
      titleController: TextEditingController(),
    ));
    emit(state.copyWith(
        modalfiltersModelObj: state.modalfiltersModelObj?.copyWith(
      typefiltersItemList: fillTypefiltersItemList(),
    )));
  }
}
