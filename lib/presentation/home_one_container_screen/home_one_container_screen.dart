import 'package:flutter/material.dart';
import 'package:letos/core/app_export.dart';
import 'package:letos/presentation/home_one_page/home_one_page.dart';
import 'package:letos/widgets/custom_bottom_bar.dart';
import 'bloc/home_one_container_bloc.dart';
import 'models/home_one_container_model.dart';

// ignore_for_file: must_be_immutable
class HomeOneContainerScreen extends StatelessWidget {
  HomeOneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeOneContainerBloc>(
        create: (context) => HomeOneContainerBloc(HomeOneContainerState(
            homeOneContainerModelObj: HomeOneContainerModel()))
          ..add(HomeOneContainerInitialEvent()),
        child: HomeOneContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeOneContainerBloc, HomeOneContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homeOnePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
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
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
