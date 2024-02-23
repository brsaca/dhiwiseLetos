// ignore_for_file: must_be_immutable

part of 'library_bloc.dart';

/// Represents the state of Library in the application.
class LibraryState extends Equatable {
  LibraryState({this.libraryModelObj});

  LibraryModel? libraryModelObj;

  @override
  List<Object?> get props => [
        libraryModelObj,
      ];

  LibraryState copyWith({LibraryModel? libraryModelObj}) {
    return LibraryState(
      libraryModelObj: libraryModelObj ?? this.libraryModelObj,
    );
  }
}
