import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_outlinedButton.dart';

import '../../../Common/app_themes.dart';
import 'Aadhar Card/aadharCard_details.dart';
import 'Driving License/drivingLicense_details.dart';
import 'Pan Card/panCard_details.dart';

class PersonalDocument extends StatelessWidget {
  const PersonalDocument({super.key});

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
      body: SafeArea(child:
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal Documents",
                style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: AppThemes.primaryTextColor2),
              ),
              const SizedBox(height: 10,),
              Text(
                "Upload focused photos of below\ndocuments for faster verification",
                style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.primaryTextColor),
              ),
              const SizedBox(height: 15,),
              CommonOutlinedButton(text: "Aadhar Card", onPressed: () {
                Get.to(() => const AadharCardDetails());
              },),
              const SizedBox(height: 10,),
              CommonOutlinedButton(text: "Pan Card", onPressed: () {
                Get.to(() => const PanCardDetails());
              },),
              const SizedBox(height: 10,),
              CommonOutlinedButton(text: "Driving License", onPressed: () {
                Get.to(() => const DrivingLicenseDetails());
              },)
            ],
          ),
        ),),
    );
  }
}
