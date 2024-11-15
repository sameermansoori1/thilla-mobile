import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import '../../Common/app_themes.dart';
import '../../Common/widget/custom_otpTextField.dart';
import '../Personal_Info/Personal_InfoScreen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
          padding: const EdgeInsets.only(left: 13.0, right: 13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter OTP to verify",
                style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'A six digit OTP has been send to your phone ',
                    style: TextStyle(
                        fontFamily: AppThemes.font1,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppThemes.primaryTextColor2)),
                TextSpan(
                    text: '\nnumber +919999988888 ',
                    style: TextStyle(
                        fontFamily: AppThemes.font1,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppThemes.primaryTextColor2)),
                TextSpan(
                    text: '  Change',
                    style: TextStyle(
                        fontFamily: AppThemes.font1,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppThemes.primary)),
              ])),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Enter OTP Text",
                style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.primaryTextColor2),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 50,
                    child: CustomOtpTextField()
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: false,
                    child: Text(
                      "Please enter Otp",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                        fontFamily: AppThemes.font1,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CommonAppButton(
                onPressed: () {
                  Get.offAll(() => const PersonalInfoScreen());

                },
                title: "Verify OTP",
                showPadding: false,
              )
            ],
          ),
        )));
  }
}
