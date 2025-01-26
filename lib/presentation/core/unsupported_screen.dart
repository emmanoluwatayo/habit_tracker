import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import '../../gen/assets.gen.dart';

class UnSupportedScreen extends StatelessWidget {
  const UnSupportedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.habitTrackerLogo.image(width: 200),
            const Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(
                'Oops! This App is best experienced on larger screen devices. Please use a device with a wider screen for optimal performance.',
                style: getRegularStyle(
                  fontSize: 16,
                  color: AppColors.greyText,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                children: [
                  Assets.images.habitTrackerLogo.image(
                    width: 65,
                  ),
                  const Gap(5),
                  Text(
                    "Habit Tracker",
                    style: getRegularStyle(
                      color: AppColors.seeAllText,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Text(
              "© Copyrights ${DateTime.now().year}",
              style: getRegularStyle(
                color: AppColors.paymentSubTextColor,
                fontSize: 11,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
