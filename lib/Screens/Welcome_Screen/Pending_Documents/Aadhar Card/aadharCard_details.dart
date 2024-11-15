

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/widget/commonCard_widget.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import 'package:thillla_mobile_frontend/Controllers/aadharcard_controller.dart';

import '../../../../Common/app_themes.dart';
import '../Pan Card/panCard_details.dart';

class AadharCardDetails extends GetView<AadharCardController> {
  const AadharCardDetails({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Aadhar card details",
                style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: AppThemes.primaryTextColor2),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Upload focused photos of your Aadhar Card\nfor faster verification",
                style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.primaryTextColor),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CommonCardWidget(
                          selectedImagePath: controller.selectedImagePath,
                          getImage: () {
                            controller.getImage();
                          },
                          text:
                              "Front side photo of your Aadhar\ncard with your clear name and\nphoto"),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonCardWidget(
                          selectedImagePath: controller.selectedImagePath2,
                          getImage: () {
                            controller.getImage2();
                          },
                          text:
                              "Front side photo of your Aadhar\ncard with you clear name and\nphoto"),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              CommonAppButton(
                onPressed: () {
                  Get.off(() => const PanCardDetails());

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
