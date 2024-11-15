import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/common_assets.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import 'package:thillla_mobile_frontend/Screens/home_screen.dart';

import '../../../Common/app_themes.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 135,
                width: 135,
                child: Image.asset(CommonAssets.success)),
            const SizedBox(height: 20,),
            Text(
              "Order Delivered\nSuccessfully!!",
              style: TextStyle(
                  fontFamily: AppThemes.font1,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),const SizedBox(height: 20,),
            Text(
              "Lorem ipsum dolor sit amet, consectetur\niLorem ipsum dolor sit amet, consectetur\nfurther",
              style: TextStyle(
                  color: AppThemes.successText,
                  fontFamily: AppThemes.font1,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            CommonAppButton(
              onPressed: () {
                Get.offAll(() => const HomeScreen());
              },
              title: "Okay",
              color: AppThemes.background,
            )
          ],
        ),
      ),
    );
  }
}
