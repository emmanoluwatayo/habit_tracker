import 'package:flutter/material.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';

Future<void> areYouSureDialog({
  required String title,
  required String content,
  required BuildContext context,
  required Function action,
  bool isIdInvolved = false,
  String id = '',
  String confirmText = 'Yes',
  String declineText = 'Cancel',
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: getRegularStyle(
          color: const Color(0xFF5D6466),
          fontSize: FontSize.s16,
        ),
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: getLightStyle(
          color: Colors.black,
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.all(10),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: AppColors.errorColor),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            declineText,
            style: getRegularStyle(
              color: AppColors.errorColor,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(
                color: AppColors.primaryColor,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          onPressed: () => isIdInvolved ? action(id) : action(),
          child: Text(
            confirmText,
            style: getRegularStyle(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    ),
  );
}
