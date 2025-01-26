import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker/application/routes/app_routes_config.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/gen/assets.gen.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.images.littleLogo.path,
              width: 200,
            ),
            const Gap(20),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoutes.loginScreen);
                },
                child: Container(
                  height: 52,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.darkRedColor,
                  ),
                  child: Center(
                    child: Text(
                      "Existing User",
                      style: getRegularStyle(
                        color: AppColors.vistaWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(32),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoutes.registrationScreen);
                },
                child: Container(
                  height: 52,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: 1.5,
                      color: AppColors.darkRedColor,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "New User",
                      style: getRegularStyle(
                        color: AppColors.darkRedColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
