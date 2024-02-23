// ignore_for_file: must_be_immutable

part of 'modalfilters_bloc.dart';

/// Represents the state of Modalfilters in the application.
class ModalfiltersState extends Equatable {
  ModalfiltersState({
    this.authorController,
    this.titleController,
    this.modalfiltersModelObj,
  });

  TextEditingController? authorController;

  TextEditingController? titleController;

  ModalfiltersModel? modalfiltersModelObj;

  @override
  List<Object?> get props => [
        authorController,
        titleController,
        modalfiltersModelObj,
      ];

  ModalfiltersState copyWith({
    TextEditingController? authorController,
    TextEditingController? titleController,
    ModalfiltersModel? modalfiltersModelObj,
  }) {
    return ModalfiltersState(
      authorController: authorController ?? this.authorController,
      titleController: titleController ?? this.titleController,
      modalfiltersModelObj: modalfiltersModelObj ?? this.modalfiltersModelObj,
    );
  }
}
