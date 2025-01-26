import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AuthButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 52,
          width: size.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: AppColors.darkRedColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: getRegularStyle(
                  color: AppColors.vistaWhiteBorder,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(
                Icons.arrow_forward_rounded,
                color: AppColors.vistaWhiteBorder,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AuthButton2 extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AuthButton2({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 24,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColors.darkRedColor,
                width: 1.0,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: getRegularStyle(
                  color: AppColors.darkRedColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: AppColors.darkRedColor,
                size: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
