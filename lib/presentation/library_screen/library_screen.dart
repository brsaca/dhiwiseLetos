import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/presentation/home_one_page/home_one_page.dart';
import 'package:letos/widgets/app_bar/appbar_title_image.dart';
import 'package:letos/widgets/app_bar/appbar_trailing_image.dart';
import 'package:letos/widgets/app_bar/custom_app_bar.dart';
import 'package:letos/widgets/custom_bottom_bar.dart';
import 'widgets/booksavedrow_item_widget.dart';

// ignore_for_file: must_be_immutable
class LibraryScreen extends StatelessWidget {
  LibraryScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 3.v),
                  _buildBookSavedRow(context)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Container(
            height: 40.v,
            width: 265.h,
            margin: EdgeInsets.only(left: 24.h),
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 265.h,
                      decoration: AppDecoration.outlineBlack,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Hola Ilumínate",
                                style: theme.textTheme.headlineSmall),
                            TextSpan(text: " ")
                          ]),
                          textAlign: TextAlign.left))),
              AppbarTitleImage(
                  imagePath: ImageConstant.img,
                  margin:
                      EdgeInsets.only(left: 147.h, right: 101.h, bottom: 15.v))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 22.v))
        ]);
  }

  /// Section Widget
  Widget _buildBookSavedRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 10.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return BooksavedrowItemWidget(onTapBookInfo: () {
                onTapBookInfo(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeOnePage;
      case BottomBarEnum.Saved:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the bookDetailScreen when the action is triggered.
  onTapBookInfo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookDetailScreen);
  }
}
