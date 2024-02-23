import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/core/utils/validation_functions.dart';
import 'package:letos/widgets/custom_elevated_button.dart';
import 'package:letos/widgets/custom_text_form_field.dart';
import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
        create: (context) => LogInBloc(LogInState(logInModelObj: LogInModel()))
          ..add(LogInInitialEvent()),
        child: LogInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 32.h),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLogo1,
                                      height: 139.v,
                                      width: 200.h),
                                  SizedBox(height: 89.v),
                                  BlocSelector<LogInBloc, LogInState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.phoneController,
                                      builder: (context, phoneController) {
                                        return CustomTextFormField(
                                            controller: phoneController,
                                            hintText: "lbl_tel_fono".tr,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 20.v, 18.h, 20.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgClose,
                                                    height: 17.adaptSize,
                                                    width: 17.adaptSize)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 58.v),
                                            contentPadding: EdgeInsets.only(
                                                left: 29.h,
                                                top: 19.v,
                                                bottom: 19.v));
                                      }),
                                  SizedBox(height: 24.v),
                                  BlocBuilder<LogInBloc, LogInState>(
                                      builder: (context, state) {
                                    return CustomTextFormField(
                                        controller: state.passwordController,
                                        hintText: "lbl_contrase_a".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              context.read<LogInBloc>().add(
                                                  ChangePasswordVisibilityEvent(
                                                      value: !state
                                                          .isShowPassword));
                                            },
                                            child: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 20.v, 17.h, 20.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgBieyefill,
                                                    height: 18.v,
                                                    width: 19.h))),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 58.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        obscureText: state.isShowPassword,
                                        contentPadding: EdgeInsets.only(
                                            left: 29.h,
                                            top: 19.v,
                                            bottom: 19.v));
                                  }),
                                  SizedBox(height: 55.v),
                                  CustomElevatedButton(
                                      height: 50.v,
                                      text: "lbl_iniciar_sesi_n".tr,
                                      buttonTextStyle: CustomTextStyles
                                          .bodyLargeSecondaryContainer18,
                                      onPressed: () {
                                        onTapIniciarSesin(context);
                                      }),
                                  SizedBox(height: 30.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtRegistraTuLibreria(context);
                                      },
                                      child: Text("msg_registra_tu_libreria".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBluegray400)),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildEighteenRow(context)));
  }

  /// Section Widget
  Widget _buildEighteenRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 36.h, right: 36.h, bottom: 27.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgWhatsicon, height: 24.v, width: 25.h),
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 3.v, bottom: 3.v),
              child: Text("lbl_contacto_admin".tr,
                  style: CustomTextStyles.bodyMediumBluegray400)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgYoutubeicon,
              height: 22.v,
              width: 23.h),
          Padding(
              padding: EdgeInsets.only(left: 7.h, top: 3.v, bottom: 3.v),
              child: Text("lbl_tutorial".tr,
                  style: CustomTextStyles.bodyMediumBluegray400))
        ]));
  }

  /// Navigates to the homeOneContainerScreen when the action is triggered.
  onTapIniciarSesin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeOneContainerScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtRegistraTuLibreria(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
