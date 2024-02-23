import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/custom_elevated_button.dart';
import 'package:letos/widgets/custom_outlined_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      Text("LETOS", style: theme.textTheme.displayMedium),
                      SizedBox(height: 4.v),
                      Text("Digitaliza tu librería",
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 52.v),
                      CustomElevatedButton(
                          height: 50.v,
                          text: "Registra tu librería",
                          buttonTextStyle:
                              CustomTextStyles.bodyLargeSecondaryContainer18,
                          onPressed: () {
                            onTapRegistraTuLibrera(context);
                          }),
                      SizedBox(height: 20.v),
                      CustomOutlinedButton(
                          text: "Iniciar sesión",
                          onPressed: () {
                            onTapIniciarSesin(context);
                          })
                    ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapRegistraTuLibrera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapIniciarSesin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
