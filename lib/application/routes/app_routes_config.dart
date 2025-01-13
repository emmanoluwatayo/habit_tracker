import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker/core/constants/app_strings.dart';
import 'package:habit_tracker/core/global_config.dart';


class AppRoutes {
  static const String myHomePage = 'myHomePage';
  static const String splashScreen = 'splash';
  static const String registerScreen = 'register';
  static const String loginScreen = 'login';
  static const String home = 'home';
  static const String forgotScreen = 'forgot_password';
  static const String authenticationMainScreen = 'authentication';
  static const String forgotPasswordScreen = 'forgot_password_screen';
  static const String resetPassword = 'reset_password';
  static const String newPasswordScreen = 'new_password_screen';
  static const String registrationCompleteDetails =
      'registrationCompleteDetails';
}

GoRouter? globalGoRouter;

GoRouter getGoRouter() {
  return globalGoRouter ??= AppRouteConfig.router;
}

class AppRouteConfig {
  static final GoRouter router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    routes: [
      // GoRoute(
      //   path: '/',
      //   name: AppRoutes.splashScreen,
      //   builder: (BuildContext context, GoRouterState state) {
      //     entryFunction();
      //     return const SplashScreen();
      //   },
      // ),
      // GoRoute(
      //   path: '/${AppRoutes.authenticationMainScreen}',
      //   name: AppRoutes.authenticationMainScreen,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const AuthenticationMainScreen();
      //   },
      // ),
      // GoRoute(
      //   path: '/${AppRoutes.registerScreen}',
      //   name: AppRoutes.registerScreen,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const RegistrationScreen();
      //   },
      // ),
      // GoRoute(
      //   path: '/${AppRoutes.myHomePage}',
      //   name: AppRoutes.myHomePage,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const MyHomePage();
      //   },
      // ),
      // GoRoute(
      //   path: '/${AppRoutes.loginScreen}',
      //   name: AppRoutes.loginScreen,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const LoginScreen();
      //   },
      // ),
      // GoRoute(
      //   path: '/${AppRoutes.forgotPasswordScreen}',
      //   name: AppRoutes.forgotPasswordScreen,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const ForgotPasswordScreen();
      //   },
      // ),
      // GoRoute(
      //   path: '/${AppRoutes.resetPassword}',
      //   name: AppRoutes.resetPassword,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const ResetPassword();
      //   },
      // ),
      // GoRoute(
      //   path: '/${AppRoutes.newPasswordScreen}',
      //   name: AppRoutes.newPasswordScreen,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const NewPassword();
      //   },
      // ),
      // GoRoute(
      //   path: '/${AppRoutes.home}',
      //   name: AppRoutes.home,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const MainNavigationScreen();
      //   },
      // ),
      // GoRoute(
      //   path: '/${AppRoutes.registrationCompleteDetails}',
      //   name: AppRoutes.registrationCompleteDetails,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const RegistrationCompleteDetails();
      //   },
      // ),
    ],
    errorPageBuilder: (BuildContext context, GoRouterState state) {
      return MaterialPage(
        child: Container(),
      );
    },
  );
  static Future<void> entryFunction() async {
    // Delay only if it's for showing a splash screen
    await Future.delayed(const Duration(seconds: 2));

    // // Ensure all services are initialized before proceeding
    // await GlobalConfig.initConfig();

    // Check authentication state
    final bool isAuthenticated =
        GlobalConfig.storageService.getBoolValue(AppStrings.IS_USER_LOGGED_IN);

    // Navigate based on authentication state
    if (isAuthenticated) {
      // AUTHENTICATED: Navigate to Home Screen
      AppRouteConfig.router.pushReplacementNamed(AppRoutes.home);
    } else {
      // NOT AUTHENTICATED: Navigate to Authentication Screen
      AppRouteConfig.router
          .pushReplacementNamed(AppRoutes.authenticationMainScreen);
    }
  }

  // static Future<void> entryFunction() {
  //   return Future.delayed(const Duration(seconds: 2), () {
  //     // checking for authentication
  //     bool isAuthenticated = GlobalConfig.storageService
  //         .getBoolValue(AppStrings.IS_USER_LOGGED_IN);

  //     if (isAuthenticated) {
  //       // AUTHENTICATED
  //       AppRouteConfig.router.pushReplacementNamed(AppRoutes.home);
  //     } else {
  //       // NOT AUTHENTICATED
  //       AppRouteConfig.router
  //           .pushReplacementNamed(AppRoutes.authenticationMainScreen);
  //     }
  //   });
  // }

  // for clearing routes
  static void clearAndNavigate(String path, {Object? extra}) {
    while (getGoRouter().canPop() == true) {
      getGoRouter().pop();
    }
    getGoRouter().pushReplacementNamed(path, extra: extra);
  }
}


