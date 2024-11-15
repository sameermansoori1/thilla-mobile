import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_selectionButton.dart';
import 'package:thillla_mobile_frontend/Screens/Welcome_Screen/Bank%20Details/bank_details.dart';
import 'package:thillla_mobile_frontend/Screens/home_screen.dart';

import 'Pending_Documents/personal_document.dart';
import 'Vehicle Detail/registration_certificate.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to Thilla",
                    style: TextStyle(
                        fontFamily: AppThemes.font1,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: AppThemes.headingTextColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Just a few steps to complete and then you\ncan start earning with Us",
                    style: TextStyle(
                        fontFamily: AppThemes.font1,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppThemes.headingTextColor),
                  ),
                ],
              ),
            ),
          )
        ],
        shadowColor: AppThemes.primaryTextColor,
        elevation: 4.0,
        toolbarHeight: 180.0,
        automaticallyImplyLeading: false,
        backgroundColor: AppThemes.primary,
        shape: const OutlineInputBorder(
            borderSide: BorderSide(
                strokeAlign: 0.0, width: 0, color: AppThemes.primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Pending Documents",
                        style: TextStyle(
                            fontFamily: AppThemes.font1,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppThemes.primaryTextColor),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonSelectionButton(
                      text: "Personal Documents",
                      onPressed: () {
                        Get.to(() => const PersonalDocument());
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonSelectionButton(
                      text: "Vehicle Details",
                      onPressed: () {
                        Get.to(() => const RegistrationCertificateDetails());
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonSelectionButton(
                      text: "Bank Account Details",
                      onPressed: () {
                        Get.to(() => const BankDetails());
                      },
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Completed Documents",
                        style: TextStyle(
                            fontFamily: AppThemes.font1,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppThemes.primaryTextColor),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonSelectionButton(
                      text: "Personal Information",
                      icon: Icons.done,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CommonAppButton(onPressed: () {
                Get.offAll(() => const HomeScreen());
              }, title: "Submit",showPadding: false,),
            )
      
          ],
        ),
      )),
    );
  }
}
