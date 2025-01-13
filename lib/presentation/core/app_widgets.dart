import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:habit_tracker/application/routes/app_routes_config.dart';
import 'package:habit_tracker/core/app_bloc_proiders/app_bloc_providers.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/theme/app_theme.dart';
import 'package:loader_overlay/loader_overlay.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.vistaYellow.withOpacity(0.4),
      ),
    );

    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: LoaderOverlay(
          useDefaultLoading: false,
          overlayWidgetBuilder: (_) {
            return const Center(
              child: SpinKitCircle(
                color: AppColors.vistaYellow,
                size: 50.0,
              ),
            );
          },
          child: ScreenUtilInit(
            designSize: const Size(375, 812),
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Finance Tracker',
              theme: getTheme(),
              routerConfig: AppRouteConfig.router,
              builder: (context, child) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    return Stack(
                      children: [
                        child!,
                        if (constraints.maxWidth < 900)
                          Positioned.fill(
                            child: Container(),
                          ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );

    // MultiBlocProvider(
    //   providers: AppBlocProviders.allBlocProviders,
    //   child: ScreenUtilInit(
    //     designSize: const Size(375, 812),
    //     child: MaterialApp.router(
    //       title: 'Finance Tracker',
    //       debugShowCheckedModeBanner: false,
    //       theme: ThemeData(
    //         colorScheme: ColorScheme.fromSeed(
    //           seedColor: Colors.deepPurple,
    //         ),
    //         useMaterial3: true,
    //       ),
    //       routerConfig: AppRouteConfig.router,
    //     ),
    //   ),
    // );
  }
}
