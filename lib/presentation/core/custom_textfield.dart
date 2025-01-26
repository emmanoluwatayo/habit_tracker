import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/shared/validators/email_validator.dart';
import 'package:habit_tracker/core/shared/validators/phone_number_validator.dart';
import 'package:habit_tracker/core/shared/validators/str_min_length_validator.dart';
import 'package:habit_tracker/core/theme/font_manager.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/core/theme/values_manager.dart';
import 'package:habit_tracker/presentation/application/authentication/enum/input_enum.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final bool isAutofocused;
  final InputEnum inputEnum;
  const CustomTextfield({
    super.key,
    required this.textController,
    required this.hintText,
    required this.isAutofocused,
    this.inputEnum = InputEnum.others,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: textController,
      inputFormatters: const [],
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s4,
          ),
          borderSide: const BorderSide(
            color: AppColors.inventoryTextfieldBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s4),
          borderSide: const BorderSide(
            color: AppColors.inventoryTextfieldBorderColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s4),
          borderSide: const BorderSide(
            color: AppColors.vistaRed,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s4,
          ),
          borderSide: const BorderSide(
            color: AppColors.vistaRed,
          ),
        ),
        hintText: hintText,
        hintStyle: getRegularStyle(
          color: AppColors.newRecordHint,
          fontSize: FontSize.s10,
          fontWeight: FontWeight.w300,
        ),
      ),
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
    );
  }
}

class CustomTxtField2 extends StatefulWidget {
  const CustomTxtField2({
    super.key,
    required this.textController,
    required this.hintText,
    required this.dropdownItems,
    required this.onItemSelected,
  });

  final TextEditingController textController;
  final String hintText;
  final List<String> dropdownItems;
  final void Function(String) onItemSelected;

  @override
  State<CustomTxtField2> createState() => _CustomTxtField2State();
}

class _CustomTxtField2State extends State<CustomTxtField2> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (selectedItem == null) {
          return 'Value can not be empty';
        }
        return null;
      },
      controller: widget.textController,
      readOnly: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        hintText: selectedItem ?? widget.hintText,
        hintStyle: getRegularStyle(
          color: AppColors.newRecordHint,
          fontSize: FontSize.s10,
          fontWeight: FontWeight.w300,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: DropdownButton<String>(
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.grey,
            ),
            underline: const SizedBox(),
            onChanged: (String? newValue) {
              setState(() {
                selectedItem = newValue;
              });
              widget.onItemSelected(newValue!);
            },
            items: widget.dropdownItems
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
