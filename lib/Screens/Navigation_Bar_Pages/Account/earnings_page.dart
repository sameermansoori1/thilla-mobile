import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/common_assets.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import 'package:thillla_mobile_frontend/Common/widget/total_earning.dart';
import 'package:thillla_mobile_frontend/Screens/Navigation_Bar_Pages/Account/withdrawal_screen.dart';

import '../../../Common/app_themes.dart';

class EarningsPage extends StatelessWidget {
  const EarningsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.primary,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
          },
        ),
        surfaceTintColor: AppThemes.background,
        title: Text(
          "Earnings",
          style: TextStyle(
            fontFamily: AppThemes.font1,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: AppThemes.headingTextColor,
          ),
        ),
        shape: const OutlineInputBorder(
          borderSide: BorderSide(
            strokeAlign: 0.0,
            width: 0,
            color: AppThemes.background,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: AppThemes.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: AppThemes.dottedBorder,
                            offset: Offset(0, 13),
                            blurRadius: 15,
                            spreadRadius: -3),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                fontFamily: AppThemes.font1,
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                                color: AppThemes.headingTextColor,
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit\namet, consectetur\niLorem ipsum dolor sit\namet, consectetur\nfurther.",
                              style: TextStyle(
                                fontFamily: AppThemes.font1,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppThemes.headingTextColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: 167,
                            height: 215,
                            child: Image.asset(CommonAssets.withdraw)),
                      ],
                    ),
                  ),
                   Expanded(
                     child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Column(
                          children: [

                            const TotalEarning(),
                            const SizedBox(height: 20,),
                            CommonAppButton(onPressed: () {
                              Get.to(() =>  const WithdrawalScreen());
                            },title: "Withdraw Now",),
                          ],
                        ),
                      ),
                                       ),
                   )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

