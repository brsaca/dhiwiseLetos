// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.profileImageController,
    this.firstNameLibraryController,
    this.cityController,
    this.phoneController,
    this.keyController,
    this.passwordController,
    this.selectedDropDownValue,
    this.isShowPassword = true,
    this.signUpModelObj,
  });

  TextEditingController? profileImageController;

  TextEditingController? firstNameLibraryController;

  TextEditingController? cityController;

  TextEditingController? phoneController;

  TextEditingController? keyController;

  TextEditingController? passwordController;

  SelectionPopupModel? selectedDropDownValue;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        profileImageController,
        firstNameLibraryController,
        cityController,
        phoneController,
        keyController,
        passwordController,
        selectedDropDownValue,
        isShowPassword,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? profileImageController,
    TextEditingController? firstNameLibraryController,
    TextEditingController? cityController,
    TextEditingController? phoneController,
    TextEditingController? keyController,
    TextEditingController? passwordController,
    SelectionPopupModel? selectedDropDownValue,
    bool? isShowPassword,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      profileImageController:
          profileImageController ?? this.profileImageController,
      firstNameLibraryController:
          firstNameLibraryController ?? this.firstNameLibraryController,
      cityController: cityController ?? this.cityController,
      phoneController: phoneController ?? this.phoneController,
      keyController: keyController ?? this.keyController,
      passwordController: passwordController ?? this.passwordController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
