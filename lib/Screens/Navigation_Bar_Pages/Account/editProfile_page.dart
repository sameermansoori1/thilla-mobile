
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import 'package:thillla_mobile_frontend/Common/widget/custom_textField.dart';
import 'package:thillla_mobile_frontend/Controllers/account_controller.dart';

import '../../../Common/app_themes.dart';
import '../../../Common/common_assets.dart';

class EditProfilePage extends GetView<AccountController> {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.homeBg,
      appBar: AppBar(
        surfaceTintColor: AppThemes.homeBg,
        backgroundColor: AppThemes.homeBg,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(
              fontFamily: AppThemes.font1,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppThemes.primaryTextColor2),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,right: 15.0,left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Profile Picture",
              style: TextStyle(
                  color: AppThemes.headingTextColor,
                  fontFamily: AppThemes.font1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1.0, right: 1.0),
              child: DottedBorder(
                color: AppThemes.dottedBorder,
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                padding: const EdgeInsets.all(6),
                dashPattern: const [4,4],
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    height: 86,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 2, color: Colors.transparent),
                              gradient: const LinearGradient(
                                colors: [
                                  AppThemes.profileBorder,
                                  AppThemes.profileBorder2
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 3, color: AppThemes.background),
                              ),
                              child: Container(
                                width: 90,
                                height: 86,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: controller.selectedImagePath.isNotEmpty
                                      ? DecorationImage(
                                          image: FileImage(File(controller
                                              .selectedImagePath.value)),
                                          fit: BoxFit.cover,
                                        )
                                      : null,
                                ),
                                child: controller.selectedImagePath.isNotEmpty
                                    ? null // If image is uploaded, no child is needed
                                    : const CircleAvatar(
                                        radius: 46,
                                        backgroundColor: AppThemes.background,
                                        child: CircleAvatar(
                                          radius: 38,
                                          backgroundImage:
                                              AssetImage(CommonAssets.profile2),
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.getImage();
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(AppThemes.background),
                              surfaceTintColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.camera_alt,
                                color: AppThemes.primary,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Change Photo",
                                style: TextStyle(
                                    color: AppThemes.headingTextColor,
                                    fontFamily: AppThemes.font1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  CustomTextField(
                    title: "Name",
                    textEditingController: controller.nameController,),
                  const SizedBox(
                    height: 6,
                  ),
                  CustomTextField(
                    title: "Phone",
                    textEditingController: controller.phoneController,
                      suffixIcon: SizedBox(

                          child: SvgPicture.asset(CommonAssets.passwordEdit,fit: BoxFit.scaleDown,))),
                  const SizedBox(
                    height: 6,
                  ),
                  CustomTextField(
                    title: "Email",
                    textEditingController: controller.emailController,),
                  const SizedBox(
                    height: 6,
                  ),
                  CustomTextField(
                    title: "City",
                    textEditingController: controller.cityController,suffixIcon: const Icon(Icons.location_on_outlined),),
                  const SizedBox(
                    height: 6,
                  ),
                  CustomTextField(
                    title: "Referral Code",
                    textEditingController: controller.codeController,),

                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CommonAppButton(onPressed: () {}, title: "Update",showPadding: false,),
                  ),
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}
