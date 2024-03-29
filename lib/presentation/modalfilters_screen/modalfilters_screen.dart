import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/custom_elevated_button.dart';
import 'package:letos/widgets/custom_icon_button.dart';
import 'package:letos/widgets/custom_text_form_field.dart';
import '../modalfilters_screen/widgets/typefilters_item_widget.dart';

class ModalfiltersScreen extends StatelessWidget {
  ModalfiltersScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController authorController = TextEditingController();

  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 30.h,
            top: 72.v,
            right: 30.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Filtros",
                  style: CustomTextStyles.bodyLargeErrorContainer,
                ),
              ),
              SizedBox(height: 13.v),
              _buildTypeFilters(context),
              SizedBox(height: 42.v),
              _buildAuthor(context),
              SizedBox(height: 17.v),
              _buildTitle(context),
              SizedBox(height: 14.v),
              _buildEditorialField(context),
              SizedBox(height: 12.v),
              _buildLanguageDrop(context),
              SizedBox(height: 4.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSixteen(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeFilters(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Wrap(
        runSpacing: 13.v,
        spacing: 13.h,
        children: List<Widget>.generate(2, (index) => TypefiltersItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildAuthor(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: CustomTextFormField(
        controller: authorController,
        hintText: "Autor",
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: CustomTextFormField(
        controller: titleController,
        hintText: "Título",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildEditorialField(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 1.h,
        right: 2.h,
      ),
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              bottom: 1.v,
            ),
            child: Text(
              "Editorial",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: CustomIconButton(
              height: 17.adaptSize,
              width: 17.adaptSize,
              child: CustomImageView(),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageDrop(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 2.v,
            ),
            child: Text(
              "Lenguaje",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrow,
            height: 12.v,
            width: 16.h,
            margin: EdgeInsets.only(top: 10.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLimpiar(BuildContext context) {
    return CustomElevatedButton(
      height: 49.v,
      width: 154.h,
      text: "Limpiar",
      margin: EdgeInsets.only(bottom: 2.v),
      buttonStyle: CustomButtonStyles.fillGrayTL10,
    );
  }

  /// Section Widget
  Widget _buildBuscar(BuildContext context) {
    return CustomElevatedButton(
      height: 49.v,
      width: 144.h,
      text: "Buscar",
      margin: EdgeInsets.only(left: 14.h),
    );
  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
        right: 31.h,
        bottom: 38.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLimpiar(context),
          _buildBuscar(context),
        ],
      ),
    );
  }
}
