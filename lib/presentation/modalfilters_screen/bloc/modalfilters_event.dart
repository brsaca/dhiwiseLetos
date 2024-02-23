// ignore_for_file: must_be_immutable

part of 'modalfilters_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Modalfilters widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ModalfiltersEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Modalfilters widget is first created.
class ModalfiltersInitialEvent extends ModalfiltersEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ModalfiltersEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
