// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'styles_manager.dart';
import 'values_manager.dart';
import 'font_manager.dart';

// Light Dark Theme
ThemeData getTheme() {
  return ThemeData(
    // colorScheme : ColorScheme.fromSeed(seedColor: colorSchemeSeed, brightness: effectiveBrightness);
    useMaterial3: false,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      primary: AppColors.primaryColor,
    ),
unselectedWidgetColor: Colors.grey,

    actionIconTheme: const ActionIconThemeData(),

    dialogBackgroundColor: Colors.white,
    primaryColor: AppColors.primaryColor,
    primaryColorLight: Colors.black,
    primaryColorDark: Colors.white,
    disabledColor: AppColors.primarySecondaryBackground,
    scaffoldBackgroundColor: Colors.white,
    // dialog theme
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: Colors.white,
      titleTextStyle: const TextStyle(
        color: Colors.black,
      ),
      contentTextStyle: const TextStyle(
        color: Colors.black,
      ),
    ),

    // Bottom sheet theme
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      elevation: 0,
    ),

    // card theme
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.grey,
      elevation: AppSize.s0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s10),
      ),
    ),

    // button theme
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      shape: StadiumBorder(),
      disabledColor: AppColors.primarySecondaryBackground,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s5),
        ),
        padding: const EdgeInsets.all(15),
        backgroundColor: AppColors.primaryColor,
        disabledBackgroundColor: AppColors.secondaryColor,
        disabledForegroundColor: Colors.white,
        textStyle: getRegularStyle(
          color: Colors.white,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.normal,
        ),
      ),
    ),

    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s5),
        borderSide: const BorderSide(
          color: AppColors.primaryFourElementText,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s5),
        borderSide: const BorderSide(
          color: AppColors.primaryFourElementText,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s5),
        borderSide: BorderSide(
          color: AppColors.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s5),
        borderSide: BorderSide(
          color: AppColors.errorColor,
        ),
      ),
      labelStyle: getRegularStyle(color: Colors.grey),
      hintStyle: getRegularStyle(color: Colors.grey),
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      errorStyle: getRegularStyle(color: Colors.red),
      suffixIconColor: AppColors.primaryColor,
      suffixStyle: getRegularStyle(color: Colors.grey),
      prefixIconColor: AppColors.primaryColor,
      prefixStyle: getRegularStyle(color: Colors.grey),
    ),

    iconTheme: const IconThemeData(color: Colors.black),

    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
      fillColor:
          MaterialStateProperty.all<Color>(AppColors.primaryFourElementText),
      side: BorderSide.none,
    ),

    datePickerTheme: DatePickerThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      headerBackgroundColor: AppColors.primaryColor,
      headerForegroundColor: Colors.white,
      dayBackgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryColor;
          }
          return Colors.transparent;
        },
      ),
      todayForegroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          return AppColors.primaryColor;
        },
      ),
      todayBackgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryColor;
          }
          return Colors.transparent;
        },
      ),
      weekdayStyle: const TextStyle(color: AppColors.primaryColor),
      yearStyle: const TextStyle(color: AppColors.primaryColor),
      cancelButtonStyle: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
      ),
      confirmButtonStyle: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
      ),
    ),

    dividerTheme: const DividerThemeData(
      thickness: 1,
      color: AppColors.greyDividerLineColor,
    ),
    dividerColor: AppColors.greyDividerLineColor,

    dataTableTheme: DataTableThemeData(
      headingRowColor: MaterialStateColor.resolveWith(
        (states) => Colors.white,
      ),
      dataRowColor: MaterialStateColor.resolveWith(
        (states) => Colors.white,
      ),
      headingTextStyle: getRegularStyle(
        color: const Color(0XFF2C2D33),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.zero,
        boxShadow: [],
        color: Colors.black,
        border: Border.all(color: Colors.black),
      ),
      dividerThickness: 1,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Color(0XFF878787),
        size: AppSize.s30,
      ),

      // Icon(
      //   Icons.chevron_left,
      //   color: Color(0XFF878787),
      // ),
      centerTitle: false,
      color: Colors.transparent,
      elevation: AppSize.s0,
      titleTextStyle: getMediumStyle(
        color: Colors.black,
        fontSize: FontSize.s18,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),

      actionsIconTheme: const IconThemeData(
        color: Colors.white,
        size: 24,
      ),

      toolbarTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge: getMediumStyle(
        color: Colors.black,
        fontSize: FontSize.s16,
      ),
      bodySmall: getRegularStyle(
        color: Colors.black,
        fontSize: FontSize.s12,
      ),
      bodyLarge: getRegularStyle(
        color: Colors.black,
      ),
    ),
  );
}
