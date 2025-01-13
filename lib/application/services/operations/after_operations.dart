// import 'package:flutter/cupertino.dart';
// import 'package:go_router/go_router.dart';
// import 'package:habit_tracker/core/global_config.dart';
// import 'package:personal_finance_tracker/application/routes/app_routes_config.dart';
// import 'package:personal_finance_tracker/core/constants/app_strings.dart';
// import 'package:personal_finance_tracker/core/extensions/loading.dart';
// import 'package:personal_finance_tracker/core/global_config.dart';


// class AfterOperationNavigation {
//   /// for navigating to [SignInScreen] after signing out
//   static void afterSignup(BuildContext context) {
//     context.hideLoader();
//     GlobalConfig.storageService
//         .removeKey(AppStrings.IS_USER_LOGGED_IN); // set logged in to false

//     GlobalConfig.storageService
//         .removeKey(AppStrings.USER_PROFILE); // remove user profile data

//     GlobalConfig.storageService.removeKey(AppStrings.LOGGED_IN_ROLE_ID);

//     GlobalConfig.storageService.removeKey(AppStrings.LOGGED_IN_HOSPITAL_ID);
//   }

//   /// navigating to [HomeScreen] after signing in
//   static void navigateToHomeScreen({required BuildContext context}) {
//     context.hideLoader();
//     GlobalConfig.storageService.setBoolValue(
//         AppStrings.IS_USER_LOGGED_IN, true); // set logged in to true

//     // set user data to bloc
//     // context.read<UserProfileBloc>().add(const SetUserProfile());

//     context.pushNamed(AppRoutes.home);
//   }

//   /// navigating to [LoginScreen]
//   static void navigateToLogin({required BuildContext context}) async {
//     context.hideLoader();
//     await GlobalConfig.storageService.removeKey(AppStrings.IS_USER_LOGGED_IN);
//     if (context.mounted) {
//       context.pushReplacementNamed(AppRoutes.loginScreen);
//     }
//   }
// }


// // class AfterOperationNavigation {
// //   /// for navigating to [SignInScreen] after signing out
// //   static void afterSignup(BuildContext context) {
// //     context.hideLoader();
// //     context.pushReplacementNamed(AppRoutes.loginScreen);

// //     context.pushNamed(AppRoutes.loginScreen);
// //   }

// //   /// navigating to [HomeScreen] after signing in
// //   static void navigateToHomeScreen({required BuildContext context}) {
// //     context.hideLoader();
// //     GlobalConfig.storageService.setBoolValue(
// //         AppStrings.IS_USER_LOGGED_IN, true); // set logged in to true

// //     // set user data to bloc
// //     // context.read<UserProfileBloc>().add(const SetUserProfile());

// //     context.pushNamed(AppRoutes.home);
// //   }

// //   /// navigating to [LoginScreen]
// //   static void navigateToLogin({required BuildContext context}) async {
// //     context.hideLoader();
// //     await GlobalConfig.storageService.removeKey(AppStrings.IS_USER_LOGGED_IN);
// //     // ignore: use_build_context_synchronously
// //     context.pushReplacementNamed(AppRoutes.loginScreen);
// //   }
// // }
