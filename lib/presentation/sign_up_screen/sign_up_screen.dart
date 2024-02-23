import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/custom_drop_down.dart';
import 'package:letos/widgets/custom_elevated_button.dart';
import 'package:letos/widgets/custom_icon_button.dart';
import 'package:letos/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController profileImageController = TextEditingController();

  TextEditingController firstNameLibraryController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController phoneController = TextEditingController();

  TextEditingController keyController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 31.h),
                        child: Column(children: [
                          SizedBox(
                              height: 150.adaptSize,
                              width: 150.adaptSize,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgBookstoreprofile,
                                        height: 150.adaptSize,
                                        width: 150.adaptSize,
                                        alignment: Alignment.center),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCamerabutton,
                                        height: 50.adaptSize,
                                        width: 50.adaptSize,
                                        alignment: Alignment.bottomRight)
                                  ])),
                          SizedBox(height: 47.v),
                          _buildProfileImage(context),
                          SizedBox(height: 25.v),
                          _buildFirstNameLibrary(context),
                          SizedBox(height: 25.v),
                          _buildCity(context),
                          SizedBox(height: 25.v),
                          CustomDropDown(
                              icon: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 21.v, 18.h, 20.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrow,
                                      height: 17.adaptSize,
                                      width: 17.adaptSize)),
                              hintText: "Estado",
                              items: dropdownItemList,
                              onChanged: (value) {}),
                          SizedBox(height: 24.v),
                          _buildAddressField(context),
                          SizedBox(height: 18.v),
                          _buildPhone(context),
                          SizedBox(height: 20.v),
                          _buildKey(context),
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtSolicitaLaClave(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 9.h),
                                      child: Text("Solicita la clave de acceso",
                                          style: CustomTextStyles
                                              .bodyMediumGray600)))),
                          SizedBox(height: 30.v),
                          _buildPassword(context)
                        ])))),
            bottomNavigationBar: _buildValidar(context)));
  }

  /// Section Widget
  Widget _buildProfileImage(BuildContext context) {
    return CustomTextFormField(
        controller: profileImageController, hintText: "Nombre / Apellido");
  }

  /// Section Widget
  Widget _buildFirstNameLibrary(BuildContext context) {
    return CustomTextFormField(
        controller: firstNameLibraryController, hintText: "Nombre / Librería");
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return CustomTextFormField(controller: cityController, hintText: "Ciudad");
  }

  /// Section Widget
  Widget _buildAddressField(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10.h, bottom: 2.v),
                  child: Text("Dirección", style: theme.textTheme.bodyLarge)),
              Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
                  child: CustomIconButton(
                      height: 17.adaptSize,
                      width: 17.adaptSize,
                      child: CustomImageView()))
            ]));
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return CustomTextFormField(
        controller: phoneController, hintText: "Teléfono");
  }

  /// Section Widget
  Widget _buildKey(BuildContext context) {
    return CustomTextFormField(controller: keyController, hintText: "Clave");
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Contraseña",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 20.v, 17.h, 20.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgBieyefill,
                height: 18.v,
                width: 19.h)),
        suffixConstraints: BoxConstraints(maxHeight: 58.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 29.h, top: 19.v, bottom: 19.v));
  }

  /// Section Widget
  Widget _buildValidar(BuildContext context) {
    return CustomElevatedButton(
        height: 50.v,
        text: "Validar",
        margin: EdgeInsets.only(left: 34.h, right: 31.h, bottom: 37.v),
        buttonTextStyle: CustomTextStyles.bodyLargeSecondaryContainer18,
        onPressed: () {
          onTapValidar(context);
        });
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtSolicitaLaClave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }

  /// Navigates to the homeOneContainerScreen when the action is triggered.
  onTapValidar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneContainerScreen);
  }
}
