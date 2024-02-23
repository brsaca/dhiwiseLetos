import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/custom_elevated_button.dart';
import 'package:letos/widgets/custom_outlined_button.dart';
import 'bloc/on_boarding_bloc.dart';
import 'models/on_boarding_model.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnBoardingBloc>(
        create: (context) => OnBoardingBloc(
            OnBoardingState(onBoardingModelObj: OnBoardingModel()))
          ..add(OnBoardingInitialEvent()),
        child: OnBoardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 65.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgLogo1,
                            height: 161.v,
                            width: 232.h),
                        SizedBox(height: 93.v),
                        Text("lbl_letos".tr,
                            style: theme.textTheme.displayMedium),
                        SizedBox(height: 4.v),
                        Text("msg_digitaliza_tu_librer_a".tr,
                            style: theme.textTheme.titleLarge),
                        SizedBox(height: 52.v),
                        CustomElevatedButton(
                            height: 50.v,
                            text: "msg_registra_tu_librer_a".tr,
                            buttonTextStyle:
                                CustomTextStyles.bodyLargeSecondaryContainer18,
                            onPressed: () {
                              onTapRegistraTuLibrera(context);
                            }),
                        SizedBox(height: 20.v),
                        CustomOutlinedButton(
                            text: "lbl_iniciar_sesi_n".tr,
                            onPressed: () {
                              onTapIniciarSesin(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapRegistraTuLibrera(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapIniciarSesin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
