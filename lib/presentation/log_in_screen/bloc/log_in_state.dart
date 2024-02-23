// ignore_for_file: must_be_immutable

part of 'log_in_bloc.dart';

/// Represents the state of LogIn in the application.
class LogInState extends Equatable {
  LogInState({
    this.phoneController,
    this.passwordController,
    this.isShowPassword = true,
    this.logInModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  LogInModel? logInModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        isShowPassword,
        logInModelObj,
      ];

  LogInState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LogInModel? logInModelObj,
  }) {
    return LogInState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      logInModelObj: logInModelObj ?? this.logInModelObj,
    );
  }
}
