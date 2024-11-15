import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:svg_flutter/svg.dart';
import 'package:thillla_mobile_frontend/Common/profile_section.dart';
import 'package:thillla_mobile_frontend/Common/widget/custom_profile_button.dart';
import 'package:thillla_mobile_frontend/Screens/Auth/login_screen.dart';
import 'package:thillla_mobile_frontend/Screens/Navigation_Bar_Pages/Account/earnings_page.dart';
import 'package:thillla_mobile_frontend/Screens/Navigation_Bar_Pages/Account/editProfile_page.dart';
import 'package:thillla_mobile_frontend/Screens/Navigation_Bar_Pages/Account/work_detailsPage.dart';

import '../../../Common/app_themes.dart';
import '../../../Common/common_assets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.homeBg,
      appBar: AppBar(
        backgroundColor: AppThemes.background,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(CommonAssets.account),
            const SizedBox(width: 5,),
            Text(
              "Account",
              style: TextStyle(
                  fontFamily: AppThemes.font1,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppThemes.headingTextColor),
            ),
            const SizedBox(
              width: 3,
            ),
          ],
        ),
        shadowColor: Colors.black12.withOpacity(0.5),
        surfaceTintColor: AppThemes.background,
        elevation: 0.8,
        shape: const OutlineInputBorder(
            borderSide: BorderSide(
                strokeAlign: 0.0, width: 0, color: AppThemes.background),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileSection(),
              Text("Options",
              style: TextStyle(color: AppThemes.primaryTextColor2,
              fontWeight: FontWeight.w700,
              fontSize: 18,
              fontFamily: AppThemes.font1),),
              const SizedBox(height: 15,),

              CustomProfileButton(text: "Edit Profile", onPressed: () {
                Get.to(() => const EditProfilePage());
              },svgAssetPath: CommonAssets.user1,),
              CustomProfileButton(text: "Location", onPressed: () {
                Get.to(() => const WorkDetailPage());
              },svgAssetPath: CommonAssets.location,),
              CustomProfileButton(text: "Earnings", onPressed: () {
                Get.to(() =>  const EarningsPage());
              },svgAssetPath: CommonAssets.earnings,),
              CustomProfileButton(text: "Support", onPressed: () {
              },svgAssetPath: CommonAssets.support,),
              CustomProfileButton(text: "Log Out", onPressed: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.confirm,
                  text: 'Do you want to logout',titleColor: AppThemes.headingTextColor,
                  confirmBtnText: 'Yes',
                  cancelBtnText: 'No',
                  confirmBtnColor: AppThemes.tabActive,
                  onConfirmBtnTap: () {
                    Get.to(() =>  const LoginScreen());
                  },
                );
              },svgAssetPath: CommonAssets.logout,)

            ],
          ),
        ),
      ),
    );
  }
}
