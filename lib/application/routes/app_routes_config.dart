import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker/core/constants/app_strings.dart';
import 'package:habit_tracker/core/global_config.dart';
import 'package:habit_tracker/presentation/application/authentication/complete_registration/complete_registration.dart';
import 'package:habit_tracker/presentation/application/authentication/entry_screen/entry_screen.dart';
import 'package:habit_tracker/presentation/application/authentication/forget_password/forget_password_screen.dart';
import 'package:habit_tracker/presentation/application/authentication/sign_in/login_screen.dart';
import 'package:habit_tracker/presentation/application/authentication/sign_up/registration_screen.dart';
import 'package:habit_tracker/presentation/application/navigation_screen/navigation_screen.dart';
import 'package:habit_tracker/presentation/application/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = 'splashScreen';
  static const String entryScreen = 'entryScreen';
  static const String counterScreen = 'counterScreen';
  static const String loginScreen = 'loginScreen';
  static const String registrationScreen = 'registrationScreen';
  static const String completeRegistrationScreen = 'completeRegistrationScreen';
  static const String forgetPasswordScreen = 'forgetPasswordScreen';
  static const String mainNavigationScreen = 'mainNavigationScreen';
}

GoRouter? globalGoRouter;

GoRouter getGoRouter() {
  return globalGoRouter ??= AppRouteConfig.router;
}

class AppRouteConfig {
  static final GoRouter router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    routes: [
      GoRoute(
        path: '/',
        name: AppRoutes.splashScreen,
        builder: (BuildContext context, GoRouterState state) {
          entryFunction();
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: '/${AppRoutes.entryScreen}',
        name: AppRoutes.entryScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const EntryScreen();
        },
      ),
      GoRoute(
        path: '/${AppRoutes.loginScreen}',
        name: AppRoutes.loginScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: '/${AppRoutes.registrationScreen}',
        name: AppRoutes.registrationScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const RegistrationScreen();
        },
      ),
      GoRoute(
        path: '/${AppRoutes.forgetPasswordScreen}',
        name: AppRoutes.forgetPasswordScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgetPasswordScreen();
        },
      ),
      GoRoute(
        path: '/${AppRoutes.completeRegistrationScreen}',
        name: AppRoutes.completeRegistrationScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const CompleteRegistrationScreen();
        },
      ),
      GoRoute(
        path: '/${AppRoutes.mainNavigationScreen}',
        name: AppRoutes.mainNavigationScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const MainNavigationScreen();
        },
      ),
    ],
    errorPageBuilder: (BuildContext context, GoRouterState state) {
      return MaterialPage(
        child: Container(),
      );
    },
  );

  static Future<void> entryFunction() {
    return Future.delayed(const Duration(seconds: 6), () {
      // checking for authentication
      AppRouteConfig.router.pushReplacementNamed(AppRoutes.entryScreen);

      // bool isAuthenticated = GlobalConfig.storageService
      //     .getBoolValue(AppStrings.IS_USER_LOGGED_IN);

      // if (isAuthenticated) {
      //   // AUTHENTICATED
      //   AppRouteConfig.router.pushReplacementNamed(AppRoutes.home);
      // } else {
      //   // NOT AUTHENTICATED
      //   AppRouteConfig.router
      //       .pushReplacementNamed(AppRoutes.entryScreen);
      // }
    });
  }

  // for clearing routes
  static void clearAndNavigate(String path, {Object? extra}) {
    while (getGoRouter().canPop() == true) {
      getGoRouter().pop();
    }
    getGoRouter().pushReplacementNamed(path, extra: extra);
  }
}
