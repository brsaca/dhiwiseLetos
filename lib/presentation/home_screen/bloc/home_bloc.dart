import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/bookdetailgrid_item_model.dart';
import 'package:letos/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      bookdetailgridItemList: fillBookdetailgridItemList(),
    )));
  }

  List<BookdetailgridItemModel> fillBookdetailgridItemList() {
    return [
      BookdetailgridItemModel(
          bookImage: ImageConstant.imgBookimage,
          bookStatus: "NUEVO",
          bookTitle: "Título",
          bookAuthor: "Autor",
          bookPrice: "60"),
      BookdetailgridItemModel(
          bookImage: ImageConstant.imgBookimage,
          bookStatus: "NUEVO",
          bookTitle: "Título",
          bookAuthor: "Autor",
          bookPrice: "60"),
      BookdetailgridItemModel(
          bookImage: ImageConstant.imgBookimage,
          bookStatus: "NUEVO",
          bookTitle: "Título",
          bookAuthor: "Autor",
          bookPrice: "60"),
      BookdetailgridItemModel(
          bookImage: ImageConstant.imgBookimage,
          bookStatus: "NUEVO",
          bookTitle: "Título",
          bookAuthor: "Autor"),
      BookdetailgridItemModel(
          bookImage: ImageConstant.imgBookimage,
          bookStatus: "NUEVO",
          bookTitle: "Título",
          bookAuthor: "Autor"),
      BookdetailgridItemModel(
          bookImage: ImageConstant.imgBookimage,
          bookStatus: "NUEVO",
          bookTitle: "Título",
          bookAuthor: "Autor")
    ];
  }
}
