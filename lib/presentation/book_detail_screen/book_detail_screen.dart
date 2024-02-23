import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/app_bar/appbar_leading_image.dart';
import 'package:letos/widgets/app_bar/custom_app_bar.dart';
import 'package:letos/widgets/custom_elevated_button.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 34.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBookcover,
                          height: 236.v,
                          width: 150.h,
                          radius: BorderRadius.circular(20.h),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Título del Libro",
                              style: CustomTextStyles.bodyLargeErrorContainer)),
                      SizedBox(height: 1.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Autor",
                              style:
                                  CustomTextStyles.bodyLargeOnErrorContainer)),
                      SizedBox(height: 21.v),
                      Text("Edición:",
                          style: CustomTextStyles.bodyLargeErrorContainer),
                      SizedBox(height: 13.v),
                      Text("Publisher:",
                          style: CustomTextStyles.bodyLargeErrorContainer),
                      SizedBox(height: 8.v),
                      Text("Año de Publicación:",
                          style: CustomTextStyles.bodyLargeErrorContainer),
                      SizedBox(height: 10.v),
                      Text("Lenguaje:",
                          style: CustomTextStyles.bodyLargeErrorContainer),
                      SizedBox(height: 7.v),
                      Text("ISBN 10:",
                          style: CustomTextStyles.bodyLargeErrorContainer),
                      SizedBox(height: 20.v),
                      Text("ISBN 13:",
                          style: CustomTextStyles.bodyLargeErrorContainer),
                      SizedBox(height: 8.v),
                      Text("Páginas:",
                          style: CustomTextStyles.bodyLargeErrorContainer),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildValidar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(31.h, 17.v, 320.h, 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildValidar(BuildContext context) {
    return CustomElevatedButton(
        height: 55.v,
        text: "Validar",
        margin: EdgeInsets.only(left: 31.h, right: 32.h, bottom: 42.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
