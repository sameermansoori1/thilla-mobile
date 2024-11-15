import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Controllers/bankdetails_controller.dart';
import 'package:thillla_mobile_frontend/Screens/Welcome_Screen/Pending_Documents/registration_complete.dart';

import '../../../Common/app_themes.dart';
import '../../../Common/widget/common_app_button.dart';
import '../../../Common/widget/custom_textField.dart';

class BankDetails extends GetView<BankDetailsController> {
  const BankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppThemes.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
          },
        ),
        surfaceTintColor: AppThemes.background,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bank Account details",
                        style: TextStyle(
                          fontFamily: AppThemes.font1,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: AppThemes.primaryTextColor2,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Obx(() => CustomTextField(
                            title: "Bank Name",
                            textEditingController:
                                controller.bankNameController,
                            errorText: controller.bankNameError.value,
                        errorStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: AppThemes.font1),
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Obx(() => CustomTextField(
                            title: "Account Number",
                            textEditingController:
                                controller.accountNameController,
                        errorText: controller.accountNumberError.value,
                        errorStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: AppThemes.font1),
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Obx(() => CustomTextField(
                            title: "Account Holder Name",
                            textEditingController:
                                controller.accountHolderNameController,
                            errorText: controller.accountHolderNameError.value,
                            errorStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: AppThemes.font1),
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Obx(() => CustomTextField(
                            title: "IFSC",
                            textEditingController: controller.ifscController,
                            errorText: controller.ifscError.value,
                        errorStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: AppThemes.font1),
                          )),
                    ],
                  ),
                ),
              ),
              CommonAppButton(
                onPressed: () {
                  // Validate the form
                  if (controller.validate()) {
                    Get.offAll(() => const RegistrationComplete());
                  }
                },
                title: "Submit",
                showPadding: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
