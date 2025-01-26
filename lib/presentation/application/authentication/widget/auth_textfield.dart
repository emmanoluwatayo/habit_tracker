import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/shared/validators/email_validator.dart';
import 'package:habit_tracker/core/shared/validators/password_validator.dart';
import 'package:habit_tracker/core/shared/validators/phone_number_validator.dart';
import 'package:habit_tracker/core/shared/validators/str_min_length_validator.dart';
import 'package:habit_tracker/core/theme/font_manager.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/core/theme/values_manager.dart';
import 'package:habit_tracker/presentation/application/authentication/enum/input_enum.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.textInputType,
    this.isAutofocused = false,
    this.inputEnum = InputEnum.others,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool isAutofocused;
  final InputEnum inputEnum;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width / 4,
      child: TextFormField(
        autofocus: isAutofocused,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        keyboardType: textInputType,
        validator: (value) {
          switch (inputEnum) {
            case InputEnum.email:
              return validateEmail(value!);
            case InputEnum.phone:
              return validatePhoneNumber(value!);
            case InputEnum.others:
              return validateStrMinLength(value!, 3, hintText);
          }
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.adminTextFieldBorderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.adminTextFieldBorderColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.adminTextFieldBorderColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.adminTextFieldBorderColor,
            ),
          ),
          hintText: hintText,
          hintStyle: getLightStyle(
            color: AppColors.authHintTextColor,
            fontSize: FontSize.s14,
          ),
        ),
      ),
    );
  }
}

class AuthPasswordTextField extends StatefulWidget {
  const AuthPasswordTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isAutofocused = false,
    required this.isObscured,
    required this.toggleObscure,
    this.isConfirmPassword = false,
    this.passwordText = "",
    this.isLoginField = false,
  });

  final TextEditingController controller;
  final String hintText;
  final bool isAutofocused;
  final bool isObscured;
  final Function toggleObscure;
  final bool isConfirmPassword;
  final String passwordText;
  final bool isLoginField;

  @override
  State<AuthPasswordTextField> createState() => _AuthPasswordTextFieldState();
}

class _AuthPasswordTextFieldState extends State<AuthPasswordTextField> {
  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width / 4,
      child: TextFormField(
        autofocus: widget.isAutofocused,
        obscureText: widget.isObscured,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.controller,
        validator: (value) {
          if (widget.isConfirmPassword) {
            if (widget.passwordText != widget.controller.text) {
              return "Password mismatch!";
            }
          }

          if (widget.isLoginField) {
            if (value!.isEmpty) {
              return "Password can not be empty";
            }
          } else {
            return value!.validatePassword();
          }

          return null;
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.adminTextFieldBorderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.adminTextFieldBorderColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.adminTextFieldBorderColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s4),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.adminTextFieldBorderColor,
            ),
          ),
          suffixIcon: widget.controller.text.isNotEmpty
              ? widget.isObscured
                  ? MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          widget.toggleObscure();
                        },
                        child: const Icon(
                          Icons.visibility,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    )
                  : MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => widget.toggleObscure(),
                        child: const Icon(
                          Icons.visibility_off,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    )
              : const SizedBox.shrink(),
          hintText: widget.hintText,
          hintStyle: getLightStyle(
            color: AppColors.authHintTextColor,
            fontSize: FontSize.s14,
          ),
        ),
      ),
    );
  }
}
