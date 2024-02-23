import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/custom_drop_down.dart';
import 'package:letos/widgets/custom_elevated_button.dart';
import 'package:letos/widgets/custom_text_form_field.dart';
import 'bloc/valid_book_bloc.dart';
import 'models/photoscollection_item_model.dart';
import 'models/valid_book_model.dart';
import 'widgets/photoscollection_item_widget.dart';

class ValidBookScreen extends StatelessWidget {
  const ValidBookScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ValidBookBloc>(
      create: (context) => ValidBookBloc(ValidBookState(
        validBookModelObj: ValidBookModel(),
      ))
        ..add(ValidBookInitialEvent()),
      child: ValidBookScreen(),
    );
  }

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
                          child: BlocSelector<ValidBookBloc, ValidBookState,
                              ValidBookModel?>(
                            selector: (state) => state.validBookModelObj,
                            builder: (context, validBookModelObj) {
                              return CustomDropDown(
                                icon: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 28.v, 16.h, 18.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrow,
                                    height: 12.v,
                                    width: 16.h,
                                  ),
                                ),
                                hintText: "lbl_lenguaje".tr,
                                items:
                                    validBookModelObj?.dropdownItemList ?? [],
                                onChanged: (value) {
                                  context
                                      .read<ValidBookBloc>()
                                      .add(ChangeDropDownEvent(value: value));
                                },
                              );
                            },
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
        child: BlocSelector<ValidBookBloc, ValidBookState, ValidBookModel?>(
          selector: (state) => state.validBookModelObj,
          builder: (context, validBookModelObj) {
            return ListView.separated(
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
              itemCount:
                  validBookModelObj?.photoscollectionItemList.length ?? 0,
              itemBuilder: (context, index) {
                PhotoscollectionItemModel model =
                    validBookModelObj?.photoscollectionItemList[index] ??
                        PhotoscollectionItemModel();
                return PhotoscollectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCamera(BuildContext context) {
    return CustomElevatedButton(
      height: 49.v,
      text: "lbl_c_mara".tr,
      margin: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFifty(BuildContext context) {
    return BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
      selector: (state) => state.fiftyController,
      builder: (context, fiftyController) {
        return CustomTextFormField(
          width: 140.h,
          controller: fiftyController,
          hintText: "lbl_vol_menes".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFifty1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child:
          BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
        selector: (state) => state.fiftyController1,
        builder: (context, fiftyController1) {
          return CustomTextFormField(
            width: 140.h,
            controller: fiftyController1,
            hintText: "lbl_precio".tr,
          );
        },
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
    return BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
      selector: (state) => state.fortyNineController,
      builder: (context, fortyNineController) {
        return CustomTextFormField(
          width: 140.h,
          controller: fortyNineController,
          hintText: "lbl_condici_n".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFortyNine1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child:
          BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
        selector: (state) => state.fortyNineController1,
        builder: (context, fortyNineController1) {
          return CustomTextFormField(
            width: 140.h,
            controller: fortyNineController1,
            hintText: "lbl_formato".tr,
          );
        },
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
      child:
          BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
        selector: (state) => state.commentsFieldController,
        builder: (context, commentsFieldController) {
          return CustomTextFormField(
            controller: commentsFieldController,
            hintText: "lbl_comentarios".tr,
          );
        },
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
      child:
          BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
        selector: (state) => state.titleFieldController,
        builder: (context, titleFieldController) {
          return CustomTextFormField(
            controller: titleFieldController,
            hintText: "lbl_t_tulo".tr,
          );
        },
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
      child:
          BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
        selector: (state) => state.autorFieldController,
        builder: (context, autorFieldController) {
          return CustomTextFormField(
            controller: autorFieldController,
            hintText: "lbl_autor".tr,
          );
        },
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
      child:
          BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
        selector: (state) => state.editorialFieldController,
        builder: (context, editorialFieldController) {
          return CustomTextFormField(
            controller: editorialFieldController,
            hintText: "lbl_editorial".tr,
          );
        },
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
      child:
          BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
        selector: (state) => state.dimensionsFieldController,
        builder: (context, dimensionsFieldController) {
          return CustomTextFormField(
            controller: dimensionsFieldController,
            hintText: "lbl_dimensiones".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyTwo(BuildContext context) {
    return BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
      selector: (state) => state.fiftyTwoController,
      builder: (context, fiftyTwoController) {
        return CustomTextFormField(
          width: 140.h,
          controller: fiftyTwoController,
          hintText: "msg_a_o_de_publicaci_n2".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 19.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFiftyTwo1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child:
          BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
        selector: (state) => state.fiftyTwoController1,
        builder: (context, fiftyTwoController1) {
          return CustomTextFormField(
            width: 140.h,
            controller: fiftyTwoController1,
            hintText: "lbl_p_ginas2".tr,
          );
        },
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
    return BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
      selector: (state) => state.fiftyOneController,
      builder: (context, fiftyOneController) {
        return CustomTextFormField(
          width: 140.h,
          controller: fiftyOneController,
          hintText: "lbl_isbn_133".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFiftyOne1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child:
          BlocSelector<ValidBookBloc, ValidBookState, TextEditingController?>(
        selector: (state) => state.fiftyOneController1,
        builder: (context, fiftyOneController1) {
          return CustomTextFormField(
            width: 140.h,
            controller: fiftyOneController1,
            hintText: "lbl_isbn_102".tr,
            textInputAction: TextInputAction.done,
          );
        },
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
      text: "lbl_validar".tr,
      margin: EdgeInsets.only(
        left: 30.h,
        right: 22.h,
      ),
    );
  }
}
