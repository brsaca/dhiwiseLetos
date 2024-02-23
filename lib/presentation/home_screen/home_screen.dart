import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/widgets/app_bar/appbar_title_image.dart';
import 'package:letos/widgets/app_bar/appbar_trailing_image.dart';
import 'package:letos/widgets/app_bar/custom_app_bar.dart';
import 'widgets/bookdetailgrid_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 7.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBookDetailGrid(context),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: _buildBookAuthorRow(
                      context,
                      authorName1: "Título",
                      authorName2: "Título",
                      authorName3: "Título",
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: _buildBookAuthorRow(
                      context,
                      authorName1: "Autor",
                      authorName2: "Autor",
                      authorName3: "Autor",
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      right: 63.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 45.h,
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "60",
                            style:
                                CustomTextStyles.bodySmallSecondaryContainer11,
                          ),
                        ),
                        Container(
                          width: 45.h,
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "60",
                            style:
                                CustomTextStyles.bodySmallSecondaryContainer11,
                          ),
                        ),
                        Container(
                          width: 45.h,
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "60",
                            style:
                                CustomTextStyles.bodySmallSecondaryContainer11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 265.h,
                decoration: AppDecoration.outlineBlack,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Hola Brenda",
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
              margin: EdgeInsets.fromLTRB(132.h, 2.v, 116.h, 13.v),
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

  /// Section Widget
  Widget _buildBookDetailGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 251.v,
          crossAxisCount: 3,
          mainAxisSpacing: 6.h,
          crossAxisSpacing: 6.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 12,
        itemBuilder: (context, index) {
          return BookdetailgridItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildBookAuthorRow(
    BuildContext context, {
    required String authorName1,
    required String authorName2,
    required String authorName3,
  }) {
    return Row(
      children: [
        Text(
          authorName1,
          style: CustomTextStyles.bodySmall12.copyWith(
            color: theme.colorScheme.onErrorContainer,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            authorName2,
            style: CustomTextStyles.bodySmall12.copyWith(
              color: theme.colorScheme.onErrorContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: Text(
            authorName3,
            style: CustomTextStyles.bodySmall12.copyWith(
              color: theme.colorScheme.onErrorContainer,
            ),
          ),
        ),
      ],
    );
  }
}
