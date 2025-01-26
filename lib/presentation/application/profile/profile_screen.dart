// ignore_for_file: unnecessary_null_comparison, use_build_context_synchronously

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:habit_tracker/application/bloc/authentication/profile/profile_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/presentation/application/profile/widget/address_widget.dart';
import 'package:habit_tracker/presentation/application/profile/widget/edit_info_widget.dart';
import 'package:habit_tracker/presentation/application/profile/widget/personal_info_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? uploadFileImage;
  Uint8List? uploadImage;

  // void pickFile() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles();

  //   if (result != null) {
  //     if (kIsWeb) {
  //       // Web: Use bytes
  //       Uint8List? fileBytes = result.files.first.bytes;
  //       if (fileBytes != null) {
  //         if (kDebugMode) print('File bytes length: ${fileBytes.length}');
  //         context.read<ProfileBloc>().add(
  //               UploadProfileImage(imageBytes: fileBytes),
  //             );
  //       } else {
  //         if (kDebugMode) {
  //           print('Error: No bytes available in the selected file.');
  //         }
  //       }
  //     } else {
  //       // Mobile/Desktop: Use file path
  //       String? filePath = result.files.first.path;
  //       if (filePath != null) {
  //         if (kDebugMode) print('File path: $filePath');
  //         context.read<ProfileBloc>().add(
  //               UploadProfileImage(imageFile: File(filePath)),
  //             );
  //       } else {
  //         if (kDebugMode) print('Error: No valid file path found.');
  //       }
  //     }
  //   } else {
  //     if (kDebugMode) print('No file selected.');
  //   }
  // }

  // void pickImage(BuildContext context) async {
  //   if (kIsWeb) {
  //     // Web-specific image picking
  //     final input = html.FileUploadInputElement()..accept = 'image/*';
  //     input.onChange.listen((e) {
  //       final files = input.files;
  //       if (files!.isEmpty) return;
  //       final reader = html.FileReader();

  //       reader.readAsArrayBuffer(files[0]);
  //       reader.onLoadEnd.listen((e) {
  //         final imageBytes = reader.result as Uint8List?;
  //         if (imageBytes != null) {
  //           setState(() {
  //             uploadImage = imageBytes;
  //           });
  //           context
  //               .read<ProfileBloc>()
  //               .add(UploadProfileImage(imageBytes: imageBytes));
  //         }
  //       });
  //     });
  //     input.click();
  //   } else {
  //     // Mobile/Desktop image picking
  //     final pickedImage = await ImagePickerHelper.pickImageFromGallery();
  //     if (pickedImage == null) return;

  //     final imageFile = File(pickedImage.path);
  //     setState(() {
  //       uploadFileImage = imageFile;
  //     });
  //     context.read<ProfileBloc>().add(UploadProfileImage(imageFile: imageFile));
  //   }
  // }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(
            const FetchProfile(),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.litePrimaryColor,
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state.processingStatus == ProcessingStatus.waiting) {
            return const Center(
              child: SpinKitCircle(
                color: AppColors.primaryColor,
              ),
            );
          } else if (state.processingStatus == ProcessingStatus.error) {
            return Center(
              child: Text(
                'Oops! ${state.error.errorMsg}',
                style: getRegularStyle(color: AppColors.greyText),
              ),
            );
          } else if (state.profileDetails == null) {
            return Center(
              child: Text(
                'No profile data available.',
                style: getRegularStyle(color: AppColors.greyText),
              ),
            );
          }

          final profiles = state.profileDetails;
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 26,
                        right: 26,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(60),
                          Text(
                            "My Profile",
                            style: getRegularStyle(
                              color: AppColors.vistaBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(10),
                          Container(
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    // pickFile();
                                  },
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: uploadImage != null
                                        ? MemoryImage(uploadImage!)
                                        : uploadFileImage != null
                                            ? FileImage(uploadFileImage!)
                                            : profiles['profile_image'] != null
                                                ? NetworkImage(
                                                    profiles['profile_image'])
                                                : null,
                                    child: (uploadImage == null &&
                                            uploadFileImage == null &&
                                            profiles['profile_image'] == null)
                                        ? const Icon(Icons.person,
                                            size: 50, color: Colors.grey)
                                        : null,
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      profiles['full_name'] ?? 'N/A',
                                      style: getRegularStyle(
                                        color: AppColors.vistaBlackColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      profiles['occupation'] ?? 'N/A',
                                      style: getRegularStyle(
                                        color: AppColors.profileLabelColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      '${profiles['city'] ?? 'N/A'}, ${profiles['state'] ?? 'N/A'}, ${profiles['country'] ?? 'N/A'}.',
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
                          ),
                          const Gap(30),
                          PersonalInfoWidget(
                            fullname: profiles['full_name'] ?? 'N/A',
                            emailAddress: profiles['email'] ?? 'N/A',
                            phoneNumber: profiles['phone_number'] ?? 'N/A',
                            occupation: profiles['occupation'] ?? 'N/A',
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const EditInfoWidget(),
                                  );
                                },
                              );
                            },
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          AddressWidget(
                            country: profiles['country'] ?? 'N/A',
                            cityState:
                                '${profiles['city'] ?? 'N/A'}, ${profiles['state'] ?? 'N/A'}',
                            street: profiles['address'] ?? 'N/A',
                            lga: profiles['lga'] ?? 'N/A',
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
