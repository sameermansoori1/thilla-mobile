import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import 'package:thillla_mobile_frontend/Screens/Navigation_Bar_Pages/Account/verifyOtp_screen.dart';

import '../../../Common/app_themes.dart';
import '../../../Common/widget/custom_textField.dart';

class WithdrawalScreen extends StatelessWidget {
  const WithdrawalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
          "Withdrawal",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Earnings",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppThemes.headingTextColor,
                  ),
                ),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: '₹',
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppThemes.headingTextColor)),
                      TextSpan(
                          text: '25589.09',
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: AppThemes.headingTextColor)),

                    ])),
                const SizedBox(height: 15,),
                const CustomTextField(
                    title: "Enter Amount",
                    hintText: "Lorem Ipsum",
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonAppButton(
                  onPressed: () {},
                  width: 167,
                  showPadding: false,
                  title: "Cancel",
                  color: AppThemes.background,
                ),
                CommonAppButton(
                  onPressed: () {
                    Get.offAll(() => const VerifyOtpScreen());
                  },
                  width: 167,
                  showPadding: false,
                  title: "Withdraw Now",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
