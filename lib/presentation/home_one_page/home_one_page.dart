import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/app_bar/appbar_title_image.dart';
import 'package:letos/widgets/app_bar/appbar_trailing_image.dart';
import 'package:letos/widgets/app_bar/custom_app_bar.dart';
import 'widgets/bookrow_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomeOnePage extends StatelessWidget {
  const HomeOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 3.v,
            right: 10.h,
          ),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 15.v,
              );
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return BookrowItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Container(
        height: 40.v,
        width: 265.h,
        margin: EdgeInsets.only(left: 24.h),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 265.h,
                decoration: AppDecoration.outlineBlack,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Hola Ilumínate",
                        style: theme.textTheme.headlineSmall,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.img,
              margin: EdgeInsets.only(
                left: 147.h,
                right: 101.h,
                bottom: 15.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 22.v),
        ),
      ],
    );
  }
}
