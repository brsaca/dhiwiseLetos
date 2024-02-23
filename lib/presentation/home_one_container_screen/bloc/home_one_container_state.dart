// ignore_for_file: must_be_immutable

part of 'home_one_container_bloc.dart';

/// Represents the state of HomeOneContainer in the application.
class HomeOneContainerState extends Equatable {
  HomeOneContainerState({this.homeOneContainerModelObj});

  HomeOneContainerModel? homeOneContainerModelObj;

  @override
  List<Object?> get props => [
        homeOneContainerModelObj,
      ];

  HomeOneContainerState copyWith(
      {HomeOneContainerModel? homeOneContainerModelObj}) {
    return HomeOneContainerState(
      homeOneContainerModelObj:
          homeOneContainerModelObj ?? this.homeOneContainerModelObj,
    );
  }
}
