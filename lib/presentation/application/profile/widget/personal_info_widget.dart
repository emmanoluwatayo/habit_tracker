import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';

import '../../../../core/constants/app_colors.dart';

class PersonalInfoWidget extends StatelessWidget {
  final String fullname;
  final String emailAddress;
  final String phoneNumber;
  final String occupation;
  final VoidCallback onTap;
  const PersonalInfoWidget({
    super.key,
    required this.fullname,
    required this.emailAddress,
    required this.phoneNumber,
    required this.occupation,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width.w,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          width: 1,
          color: AppColors.darkRedColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Personal Information",
            style: getRegularStyle(
              color: AppColors.vistaBlackColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(10.h),
          SizedBox(
            width: 100.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full Name",
                          style: getRegularStyle(
                            color: AppColors.textBlack2,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          fullname,
                          style: getRegularStyle(
                            color: AppColors.profileLabelColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Occupation",
                          style: getRegularStyle(
                            color: AppColors.textBlack2,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          occupation,
                          style: getRegularStyle(
                            color: AppColors.profileLabelColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email Address",
                          style: getRegularStyle(
                            color: AppColors.textBlack2,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          emailAddress,
                          style: getRegularStyle(
                            color: AppColors.profileLabelColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Phone Number",
                          style: getRegularStyle(
                            color: AppColors.textBlack2,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          phoneNumber,
                          style: getRegularStyle(
                            color: AppColors.profileLabelColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(20.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
