// ignore_for_file: must_be_immutable

part of 'book_detail_bloc.dart';

/// Represents the state of BookDetail in the application.
class BookDetailState extends Equatable {
  BookDetailState({this.bookDetailModelObj});

  BookDetailModel? bookDetailModelObj;

  @override
  List<Object?> get props => [
        bookDetailModelObj,
      ];

  BookDetailState copyWith({BookDetailModel? bookDetailModelObj}) {
    return BookDetailState(
      bookDetailModelObj: bookDetailModelObj ?? this.bookDetailModelObj,
    );
  }
}
