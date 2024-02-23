import 'package:flutter/material.dart';
import '../presentation/on_boarding_screen/on_boarding_screen.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/home_one_container_screen/home_one_container_screen.dart';
import '../presentation/book_detail_screen/book_detail_screen.dart';
import '../presentation/valid_book_screen/valid_book_screen.dart';
import '../presentation/library_screen/library_screen.dart';
import '../presentation/modalfilters_screen/modalfilters_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onBoardingScreen = '/on_boarding_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeOnePage = '/home_one_page';

  static const String homeOneContainerScreen = '/home_one_container_screen';

  static const String bookDetailScreen = '/book_detail_screen';

  static const String validBookScreen = '/valid_book_screen';

  static const String libraryScreen = '/library_screen';

  static const String modalfiltersScreen = '/modalfilters_screen';

  static const String homeScreen = '/home_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onBoardingScreen: OnBoardingScreen.builder,
        logInScreen: LogInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        homeOneContainerScreen: HomeOneContainerScreen.builder,
        bookDetailScreen: BookDetailScreen.builder,
        validBookScreen: ValidBookScreen.builder,
        libraryScreen: LibraryScreen.builder,
        modalfiltersScreen: ModalfiltersScreen.builder,
        homeScreen: HomeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnBoardingScreen.builder
      };
}
