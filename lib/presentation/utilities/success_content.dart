import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';

class SuccessContentModal extends StatelessWidget {
  final String title;
  final String subtitle;
  const SuccessContentModal({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 114,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            title,
            style: getRegularStyle(
              color: AppColors.cashAtmBorderColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(24),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: getRegularStyle(
              color: AppColors.viewDetailsPaymentTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
