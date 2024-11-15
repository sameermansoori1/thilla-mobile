import 'package:flutter/material.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_status_button.dart';

import '../../../Common/app_themes.dart';
import '../../../Common/common_assets.dart';



class RegistrationComplete extends StatelessWidget {
  const RegistrationComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.primary,
      appBar: AppBar(

        surfaceTintColor: AppThemes.background,

        title: Center(
          child: Text(
            "Registration Complete",
            style: TextStyle(
                fontFamily: AppThemes.font1,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: AppThemes.headingTextColor),
          ),
        ),
        shape: const OutlineInputBorder(
            borderSide: BorderSide(
                strokeAlign: 0.0, width: 0, color: AppThemes.background),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            color: AppThemes.primary,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Application is under \nVerification",
                        style: TextStyle(
                            fontFamily: AppThemes.font1,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppThemes.headingTextColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Account will get activated in 48hrs",
                        style: TextStyle(
                            fontFamily: AppThemes.font1,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppThemes.headingTextColor),
                      ),
                    ],
                  ),
                  Image.asset(
                    CommonAssets.registration,height: 91,width: 80,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: AppThemes.background,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonStatusButton(
                              text: "Personal Information",
                              status: "Approved",
                              statusColor: AppThemes.primary,
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CommonStatusButton(
                              text: "Personal Documents",
                              status: "Verification Pending",
                              statusColor: AppThemes.alert,
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CommonStatusButton(
                              text: "Vehicle Details",
                              status: "Approved",
                              statusColor: AppThemes.primary,
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CommonStatusButton(
                              text: "Bank Account Details",
                              status: "Approved",
                              statusColor: AppThemes.primary,
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CommonStatusButton(
                              text: "Emergency Details",
                              status: "Approved",
                              statusColor: AppThemes.primary,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Need Help ? ',
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primaryTextColor2)),
                          TextSpan(
                              text: '  Contact Us',
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primary)),
                        ])),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
