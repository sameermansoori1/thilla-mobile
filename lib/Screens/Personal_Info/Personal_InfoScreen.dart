import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_text_field.dart';
import 'package:thillla_mobile_frontend/Screens/Welcome_Screen/welcome_screen.dart';
import '../../Common/app_themes.dart';
import '../../Common/widget/common_app_button.dart';
import '../../Controllers/personal_info_controller.dart';

class PersonalInfoScreen extends GetView<PersonalInfoController> {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppThemes.background,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 13.0, right: 13.0, top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal Information",
                style: TextStyle(
                    color: AppThemes.primaryTextColor2,
                    fontFamily: AppThemes.font1,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Enter the details below so we can get to know \nand serve you better",
                style: TextStyle(
                    color: AppThemes.primaryTextColor,
                    fontFamily: AppThemes.font1,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Your Profile Picture",
                style: TextStyle(
                    color: AppThemes.primaryTextColor,
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1.0,right: 1.0),
                child: DottedBorder(
                  color: AppThemes.dottedBorder,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  padding: const EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: SizedBox(
                      height: 86,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Obx(
                            () =>  Container(
                              width: 90,
                              height: 86,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: controller.selectedImagePath.isNotEmpty
                                    ? DecorationImage(
                                  image: FileImage(File(controller.selectedImagePath.value)),
                                  fit: BoxFit.fill,
                                )
                                    : null,
                              ),
                              child: controller.selectedImagePath.isNotEmpty
                                  ? null
                                  : const Icon(
                                Icons.account_box,
                                size: 90,
                                color: AppThemes.primaryTextColor,
                              ),
                            ),
                          ),

                          ElevatedButton(
                            onPressed: () {controller.getImage();},
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    AppThemes.background),
                                surfaceTintColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.camera_alt,
                                  color: AppThemes.primary,
                                ),
                                const SizedBox(width: 3,),
                                Text(
                                  "Upload Photo",
                                  style: TextStyle(
                                      color: AppThemes.primary,
                                      fontFamily: AppThemes.font1,
                                      fontSize: 20,
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
               CommonTextField(
                title: "First Names*",
                hintText: "Please enter first name",
                textEditingController: controller.firstNameController,

              ),
              const SizedBox(
                height: 10,
              ),
               CommonTextField(
                title: "Last Name*",
                hintText: "Please enter last name",
                textEditingController: controller.lastNameController,
              ),
              const SizedBox(
                height: 10,
              ),
               CommonTextField(
                title: "Father's Names*",
                hintText: "Please enter father's name",
                 textEditingController: controller.fathersNameController,
              ),
              const SizedBox(
                height: 10,
              ),
              CommonTextField(
                onTap:  () async {
                  var datePicked = await DatePicker.showSimpleDatePicker(
                    context,
                    firstDate: DateTime(1920),
                    lastDate: DateTime(2090),
                    dateFormat: "dd-MM-yyyy",
                    locale: DateTimePickerLocale.en_us,
                    looping: true,
                  );

                  if (datePicked != null) {
                    controller.dateController.text = DateFormat('dd-MM-yyyy').format(datePicked);
                  }
                },
                title: "Date of Birth*",
                textEditingController: controller.dateController,
                hintText: "dd-mm-yyy",
                readOnly: true,
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_month_sharp),color: AppThemes.primary,
                  onPressed: () async {
                    var datePicked = await DatePicker.showSimpleDatePicker(
                      context,
                      firstDate: DateTime(1920),
                      lastDate: DateTime(2090),
                      dateFormat: "dd-MM-yyyy",
                      locale: DateTimePickerLocale.en_us,
                      looping: true,
                    );

                    if (datePicked != null) {
                      controller.dateController.text = DateFormat('dd-MM-yyyy').format(datePicked);
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               CommonTextField(
                title: "Primary mobile number*",
                hintText: "+919999988888",
                keyboardType: TextInputType.phone,
                textEditingController: controller.primaryMobileNumberController,
                 inputFormatters: [
                   FilteringTextInputFormatter.digitsOnly,
                   LengthLimitingTextInputFormatter(10),
                 ],
              ),
              const SizedBox(
                height: 10,
              ),
               CommonTextField(
                title: "WhatsApp number*",
                hintText: "+919999988888",
                keyboardType: TextInputType.phone,
                textEditingController: controller.whatsappNumberController,
                 inputFormatters: [
                   FilteringTextInputFormatter.digitsOnly,
                   LengthLimitingTextInputFormatter(10),
                 ],
              ),
              const SizedBox(
                height: 10,
              ),
               CommonTextField(
                title: "Secondary mobile number (Optional)",
                hintText: "e.g. +919999988888",
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
               CommonTextField(
                title: "Blood group*",
                hintText: "Enter blood group here",
                 textEditingController: controller.bloodGroupController,
              ),
              const SizedBox(
                height: 10,
              ),
              CommonTextField(
                title: "City",
                hintText: "e.g. Bangalore",
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppThemes.primaryTextColor,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const CommonTextField(
                title: "Enter complete address here",
                hintText: "Enter address",

              ),
              const SizedBox(
                height: 10,
              ),
              CommonTextField(
                title: "Language you know",
                hintText: "Select one or multiple",
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppThemes.primaryTextColor,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const CommonTextField(
                title: "Refferal code (Optional)",
                hintText: "Enter Refferal code",
              ),
              const SizedBox(
                height: 50,
              ),
              CommonAppButton(
                onPressed: () {
                  controller.submit(context);
                },

                title: "Submit",
                showPadding: false,
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
