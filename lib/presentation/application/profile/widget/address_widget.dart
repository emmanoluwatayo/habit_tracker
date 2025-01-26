import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';

class AddressWidget extends StatelessWidget {
  final String country;
  final String cityState;
  final String street;
  final String lga;

  const AddressWidget({
    super.key,
    required this.country,
    required this.cityState,
    required this.street,
    required this.lga,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Address",
                style: getRegularStyle(
                  color: AppColors.vistaBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
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
                          "Country",
                          style: getRegularStyle(
                            color: AppColors.textBlack2,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          country,
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
                          "City/State",
                          style: getRegularStyle(
                            color: AppColors.textBlack2,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          cityState,
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
                          "Street",
                          style: getRegularStyle(
                            color: AppColors.textBlack2,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          street,
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
                          "LGA",
                          style: getRegularStyle(
                            color: AppColors.textBlack2,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          lga,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
