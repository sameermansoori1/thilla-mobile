import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:thillla_mobile_frontend/Common/common_assets.dart';
import 'package:thillla_mobile_frontend/Controllers/account_controller.dart';

import '../../../Common/app_themes.dart';
import '../../../Common/widget/common_app_button.dart';
import '../../../Common/widget/custom_textField.dart';

class WorkDetailPage extends GetView<AccountController> {
  const WorkDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppThemes.background,
        backgroundColor: AppThemes.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "Work Details",
          style: TextStyle(
              fontFamily: AppThemes.font1,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppThemes.primaryTextColor2),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTextField(
                      title: "My Stores",
                      textEditingController: controller.randomController,
                      suffixIcon: SvgPicture.asset(CommonAssets.storefront,fit: BoxFit.scaleDown,)
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    CustomTextField(
                      title: "Vehicle Selection",
                      textEditingController: controller.randomController,
                      suffixIcon: SvgPicture.asset(CommonAssets.car,fit: BoxFit.scaleDown,)
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CommonAppButton(
                        onPressed: () {},
                        title: "Update",
                        showPadding: false,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
