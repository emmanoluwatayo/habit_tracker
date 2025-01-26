import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_tracker/application/bloc/authentication/complete_reg/complete_reg_bloc.dart';
import 'package:habit_tracker/application/routes/app_routes_config.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/extensions/loading.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/core/shared/enums/status.dart';
import 'package:habit_tracker/core/theme/font_manager.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/core/theme/values_manager.dart';
import 'package:habit_tracker/gen/assets.gen.dart';
import 'package:habit_tracker/presentation/application/authentication/enum/input_enum.dart';
import 'package:habit_tracker/presentation/application/authentication/widget/auth_button.dart';
import 'package:habit_tracker/presentation/application/authentication/widget/auth_textfield.dart';
import 'package:habit_tracker/presentation/core/toast_info.dart';
import 'package:nigerian_states_and_lga/nigerian_states_and_lga.dart';

class CompleteRegistrationScreen extends StatefulWidget {
  const CompleteRegistrationScreen({super.key});

  @override
  State<CompleteRegistrationScreen> createState() =>
      _CompleteRegistrationScreenState();
}

class _CompleteRegistrationScreenState
    extends State<CompleteRegistrationScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final countryController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();
  final occupationController = TextEditingController();
  final lgaController = TextEditingController();
  String? stateValue;

  String lgaValue = 'Choose an LGA';
  List<String> statesLga = [];

  void completeRegistration() {
    if (formKey.currentState!.validate()) {
      // Check if required fields are valid
      if (stateValue == null || stateValue!.isEmpty) {
        toastInfo(
          msg: 'Please select your State',
          status: Status.error,
        );
        return;
      }
      if (lgaValue == 'Choose an LGA') {
        toastInfo(
          msg: 'Please select your LGA',
          status: Status.error,
        );
        return;
      }
      context.read<CompleteRegBloc>().add(
            CompleteRegEvent.completeRegistration(
              address: addressController.text,
              country: countryController.text,
              state: stateValue!,
              city: cityController.text,
              occupation: occupationController.text,
              lga: lgaValue,
            ),
          );
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CompleteRegBloc, CompleteRegState>(
      listener: (context, state) {
        if (state.processingStatus == ProcessingStatus.waiting) {
          context.showLoader();
        } else if (state.processingStatus == ProcessingStatus.error) {
          context.hideLoader();
          toastInfo(
            msg: 'Ops! ${state.error.errorMsg}',
            status: Status.error,
          );
        } else if (state.processingStatus == ProcessingStatus.success) {
          context.hideLoader();
          showSuccessDialog(context);
          Future.delayed(const Duration(seconds: 3), () {
            context.pushNamed(
              AppRoutes.loginScreen,
            );
          });
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 464,
                    padding: const EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.vistaWhite,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.authenticationShadowColor,
                          spreadRadius: -4,
                          blurRadius: 16,
                          offset: Offset(0, 2),
                        ),
                      ],
                      border: Border.all(
                        width: 1,
                        color: AppColors.cashAtmBorderColor,
                      ),
                    ),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.arrow_back_ios,
                                    size: 15,
                                    color: AppColors.homeFirstAidSubTitleColor,
                                  ),
                                  Text(
                                    "Back",
                                    style: getRegularStyle(
                                      color:
                                          AppColors.homeFirstAidSubTitleColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Personal Details",
                            style: getRegularStyle(
                              color: AppColors.homeFirstAidSubTitleColor,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Kindly fill in your details to complete your registration.",
                            style: getRegularStyle(
                              color: AppColors.homeFirstAidSubTitleColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),

                          const Gap(48),
                          SizedBox(
                            width: double.infinity,
                            child: AuthTextField(
                              isAutofocused: true,
                              textInputType: TextInputType.text,
                              hintText: 'Address',
                              controller: addressController,
                              inputEnum: InputEnum.others,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: AuthTextField(
                              isAutofocused: true,
                              textInputType: TextInputType.text,
                              hintText: 'Occupation',
                              controller: occupationController,
                              inputEnum: InputEnum.others,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: AuthTextField(
                              textInputType: TextInputType.text,
                              hintText: 'Country',
                              controller: countryController,
                              inputEnum: InputEnum.others,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
                              isExpanded: true,
                              hint: Text(
                                'Select State',
                                style: getLightStyle(
                                  color: AppColors.authHintTextColor,
                                  fontSize: FontSize.s14,
                                ),
                              ),
                              value: stateValue,
                              items: NigerianStatesAndLGA.allStates
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        value,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                              selectedItemBuilder: (BuildContext context) {
                                return NigerianStatesAndLGA.allStates
                                    .map((String state) {
                                  return Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      state,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  );
                                }).toList();
                              },
                              onChanged: (String? value) {
                                lgaValue = 'Choose an LGA';
                                statesLga.clear();
                                statesLga.add(lgaValue);
                                statesLga.addAll(
                                  NigerianStatesAndLGA.getStateLGAs(value!),
                                );

                                setState(() {
                                  stateValue = value;
                                });
                              },
                              style: const TextStyle(color: Colors.black),
                              buttonStyleData: ButtonStyleData(
                                height: 50,
                                padding: const EdgeInsets.only(
                                  right: 18.0,
                                  left: 0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s4),
                                  border: Border.all(
                                    width: 1,
                                    color: AppColors.adminTextFieldBorderColor,
                                  ),
                                ),
                              ),
                              dropdownStyleData: DropdownStyleData(
                                maxHeight: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                ),
                              ),
                              iconStyleData: const IconStyleData(
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: AuthTextField(
                              textInputType: TextInputType.text,
                              hintText: 'City',
                              controller: cityController,
                              inputEnum: InputEnum.others,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
                              isExpanded: true,
                              hint: Text(
                                'Choose an LGA',
                                style: getLightStyle(
                                  color: AppColors.authHintTextColor,
                                  fontSize: FontSize.s14,
                                ),
                              ),
                              value: lgaValue,
                              items: statesLga.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        value,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                              selectedItemBuilder: (BuildContext context) {
                                return statesLga.map((String lga) {
                                  return Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      lga,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  );
                                }).toList();
                              },
                              onChanged: (String? value) {
                                setState(() {
                                  lgaValue = value!;
                                });
                              },
                              style: const TextStyle(color: Colors.black),
                              buttonStyleData: ButtonStyleData(
                                height: 50,
                                padding: const EdgeInsets.only(
                                  right: 18.0,
                                  left: 0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s4),
                                  border: Border.all(
                                    width: 1,
                                    color: AppColors.adminTextFieldBorderColor,
                                  ),
                                ),
                              ),
                              dropdownStyleData: DropdownStyleData(
                                maxHeight: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                ),
                              ),
                              iconStyleData: const IconStyleData(
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: double.infinity,
                          //   child: AuthTextField(
                          //     textInputType: TextInputType.text,
                          //     hintText: 'Local government',
                          //     controller: lgaController,
                          //     inputEnum: InputEnum.others,
                          //   ),
                          // ),
                          const SizedBox(
                            height: 48,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: AuthButton(
                              title: 'Submit',
                              onTap: () {
                                completeRegistration();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "© Copyrights ${DateTime.now().year}",
                    style: getRegularStyle(
                      color: AppColors.paymentSubTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 66,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.littleLogo.image(
              scale: 3,
              height: 40,
              width: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "All done!",
              style: getRegularStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Your Profile has been setup completely",
              style: getRegularStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      );
    },
  );
}
