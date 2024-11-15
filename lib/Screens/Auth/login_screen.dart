import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';
import 'package:thillla_mobile_frontend/Common/custom_clipper.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_text_field.dart';
import 'package:thillla_mobile_frontend/Controllers/login_controller.dart';
import 'package:thillla_mobile_frontend/Screens/Auth/otp_screen.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomClippers(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Enter Mobile Number",
                    style: TextStyle(
                      fontFamily: AppThemes.font1,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: CommonTextField(
                    textEditingController: controller.mobileController,
                    hintText: 'e.g. 9123654987',
                  ),
                ),
                Obx(
                      () => Visibility(
                    visible: controller.errorMessage.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Please enter a valid mobile number!",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            fontFamily: AppThemes.font1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 0),
                  child: Row(
                    children: [
                      Obx(
                            () => Checkbox(
                          value: controller.isAgreed.value,
                          onChanged: (value) {
                            controller.toggleAgreement(value ?? false);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'By signing up I to the ',
                                style: TextStyle(
                                    fontFamily: AppThemes.font1,
                                    fontSize: 14,
                                    color: Colors.black)),
                            TextSpan(
                                text: 'Terms of use ',
                                style: TextStyle(
                                    fontFamily: AppThemes.font1,
                                    fontSize: 14,
                                    color: AppThemes.primary)),
                            TextSpan(
                                text: 'and',
                                style: TextStyle(
                                    fontFamily: AppThemes.font1,
                                    fontSize: 14,
                                    color: Colors.black)),
                            TextSpan(
                                text: '\nprivacy policy',
                                style: TextStyle(
                                    fontFamily: AppThemes.font1,
                                    fontSize: 14,
                                    color: AppThemes.primary))
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                Obx(
                      () => Visibility(
                    visible: !controller.isAgreed.value,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Please accept the T&C to proceed!",
                        style: TextStyle(
                            fontSize: 12,
                            color: AppThemes.statusColor,
                            fontFamily: AppThemes.font1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CommonAppButton(
                  onPressed: () {
                    String enteredMobileNumber = controller.mobileController.text;
                    controller.updateMobileNumber(enteredMobileNumber);
                    if (controller.isValidMobileNumber &&
                        controller.isAgreed.value) {
                      Get.to(() => const OtpScreen());
                    }
                  },
                  title: "Send OTP",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
