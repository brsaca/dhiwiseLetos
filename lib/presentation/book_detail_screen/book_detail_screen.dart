import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/app_bar/appbar_leading_image.dart';
import 'package:letos/widgets/app_bar/custom_app_bar.dart';
import 'package:letos/widgets/custom_elevated_button.dart';
import 'bloc/book_detail_bloc.dart';
import 'models/book_detail_model.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BookDetailBloc>(
        create: (context) => BookDetailBloc(
            BookDetailState(bookDetailModelObj: BookDetailModel()))
          ..add(BookDetailInitialEvent()),
        child: BookDetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailBloc, BookDetailState>(
        builder: (context, state) {
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
                            child: Text("msg_t_tulo_del_libro2".tr,
                                style:
                                    CustomTextStyles.bodyLargeErrorContainer)),
                        SizedBox(height: 1.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_autor".tr,
                                style: CustomTextStyles
                                    .bodyLargeOnErrorContainer)),
                        SizedBox(height: 21.v),
                        Text("lbl_edici_n".tr,
                            style: CustomTextStyles.bodyLargeErrorContainer),
                        SizedBox(height: 13.v),
                        Text("lbl_publisher2".tr,
                            style: CustomTextStyles.bodyLargeErrorContainer),
                        SizedBox(height: 8.v),
                        Text("msg_a_o_de_publicaci_n".tr,
                            style: CustomTextStyles.bodyLargeErrorContainer),
                        SizedBox(height: 10.v),
                        Text("lbl_lenguaje2".tr,
                            style: CustomTextStyles.bodyLargeErrorContainer),
                        SizedBox(height: 7.v),
                        Text("lbl_isbn_10".tr,
                            style: CustomTextStyles.bodyLargeErrorContainer),
                        SizedBox(height: 20.v),
                        Text("lbl_isbn_132".tr,
                            style: CustomTextStyles.bodyLargeErrorContainer),
                        SizedBox(height: 8.v),
                        Text("lbl_p_ginas".tr,
                            style: CustomTextStyles.bodyLargeErrorContainer),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildValidar(context)));
    });
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
        text: "lbl_validar".tr,
        margin: EdgeInsets.only(left: 31.h, right: 32.h, bottom: 42.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
