import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/custom_drop_down.dart';
import 'package:letos/widgets/custom_elevated_button.dart';
import 'package:letos/widgets/custom_text_form_field.dart';
import 'widgets/photoscollection_item_widget.dart';

class ValidBookScreen extends StatelessWidget {
  ValidBookScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fiftyController = TextEditingController();

  TextEditingController fiftyController1 = TextEditingController();

  TextEditingController fortyNineController = TextEditingController();

  TextEditingController fortyNineController1 = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController commentsFieldController = TextEditingController();

  TextEditingController titleFieldController = TextEditingController();

  TextEditingController autorFieldController = TextEditingController();

  TextEditingController editorialFieldController = TextEditingController();

  TextEditingController dimensionsFieldController = TextEditingController();

  TextEditingController fiftyTwoController = TextEditingController();

  TextEditingController fiftyTwoController1 = TextEditingController();

  TextEditingController fiftyOneController = TextEditingController();

  TextEditingController fiftyOneController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 364.h,
          child: Column(
            children: [
              SizedBox(height: 40.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 379.v),
                    child: Column(
                      children: [
                        _buildPhotosCollection(context),
                        SizedBox(height: 18.v),
                        _buildCamera(context),
                        SizedBox(height: 22.v),
                        _buildFifty2(context),
                        SizedBox(height: 21.v),
                        _buildFortyNine2(context),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 30.h,
                            right: 23.h,
                          ),
                          child: CustomDropDown(
                            icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 28.v, 16.h, 18.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrow,
                                height: 12.v,
                                width: 16.h,
                              ),
                            ),
                            hintText: "Lenguaje",
                            items: dropdownItemList,
                            onChanged: (value) {},
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildCommentsField(context),
                        SizedBox(height: 20.v),
                        _buildTitleField(context),
                        SizedBox(height: 20.v),
                        _buildAutorField(context),
                        SizedBox(height: 21.v),
                        _buildEditorialField(context),
                        SizedBox(height: 20.v),
                        _buildDimensionsField(context),
                        SizedBox(height: 20.v),
                        _buildFiftyTwo2(context),
                        SizedBox(height: 16.v),
                        _buildFiftyOne2(context),
                        SizedBox(height: 39.v),
                        _buildValidar(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotosCollection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 157.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 46.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 18.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return PhotoscollectionItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCamera(BuildContext context) {
    return CustomElevatedButton(
      height: 49.v,
      text: "Cámara",
      margin: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFifty(BuildContext context) {
    return CustomTextFormField(
      width: 140.h,
      controller: fiftyController,
      hintText: "Volúmenes",
    );
  }

  /// Section Widget
  Widget _buildFifty1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child: CustomTextFormField(
        width: 140.h,
        controller: fiftyController1,
        hintText: " Precio",
      ),
    );
  }

  /// Section Widget
  Widget _buildFifty2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFifty(context),
          _buildFifty1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return CustomTextFormField(
      width: 140.h,
      controller: fortyNineController,
      hintText: "Condición",
    );
  }

  /// Section Widget
  Widget _buildFortyNine1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child: CustomTextFormField(
        width: 140.h,
        controller: fortyNineController1,
        hintText: "Formato",
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyNine2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 23.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFortyNine(context),
          _buildFortyNine1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentsField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 23.h,
      ),
      child: CustomTextFormField(
        controller: commentsFieldController,
        hintText: "Comentarios",
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 23.h,
      ),
      child: CustomTextFormField(
        controller: titleFieldController,
        hintText: "Título",
      ),
    );
  }

  /// Section Widget
  Widget _buildAutorField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
      child: CustomTextFormField(
        controller: autorFieldController,
        hintText: "Autor",
      ),
    );
  }

  /// Section Widget
  Widget _buildEditorialField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 23.h,
      ),
      child: CustomTextFormField(
        controller: editorialFieldController,
        hintText: "Editorial",
      ),
    );
  }

  /// Section Widget
  Widget _buildDimensionsField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
      child: CustomTextFormField(
        controller: dimensionsFieldController,
        hintText: "Dimensiones",
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyTwo(BuildContext context) {
    return CustomTextFormField(
      width: 140.h,
      controller: fiftyTwoController,
      hintText: "Año de Publicación",
      contentPadding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 19.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyTwo1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child: CustomTextFormField(
        width: 140.h,
        controller: fiftyTwoController1,
        hintText: "Páginas",
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyTwo2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFiftyTwo(context),
          _buildFiftyTwo1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
    return CustomTextFormField(
      width: 140.h,
      controller: fiftyOneController,
      hintText: "ISBN_13",
    );
  }

  /// Section Widget
  Widget _buildFiftyOne1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child: CustomTextFormField(
        width: 140.h,
        controller: fiftyOneController1,
        hintText: "ISBN_10",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyOne2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFiftyOne(context),
          _buildFiftyOne1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildValidar(BuildContext context) {
    return CustomElevatedButton(
      height: 49.v,
      text: "Validar",
      margin: EdgeInsets.only(
        left: 30.h,
        right: 22.h,
      ),
    );
  }
}
