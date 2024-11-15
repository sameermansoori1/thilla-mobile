import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screens/Navigation_Bar_Pages/Account/editProfile_page.dart';
import 'app_themes.dart';
import 'common_assets.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => const EditProfilePage());
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.transparent),
              gradient: const LinearGradient(
                colors: [AppThemes.profileBorder, AppThemes.profileBorder2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const CircleAvatar(
              radius: 46,
              backgroundColor: AppThemes.background,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundImage: AssetImage(CommonAssets.profile2),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Icon(
                      Icons.camera_alt,
                      size: 20, // Adjust size as needed
                      color: Colors.white, // Adjust color as needed
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.account_circle_rounded,
                      color: AppThemes.primary,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Aman Sharma",
                      style: TextStyle(
                          color: AppThemes.primaryTextColor,
                          fontSize: 16,
                          fontFamily: AppThemes.font1,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 65,
                  height: 27,
                  decoration: BoxDecoration(
                    color: AppThemes.background,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("4.9",
                          style: TextStyle(
                              color: AppThemes.primaryTextColor,
                              fontSize: 16,
                              fontFamily: AppThemes.font1,
                              fontWeight: FontWeight.w400)),
                      const Icon(
                        Icons.star,
                        color: AppThemes.primary,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.phone_rounded,
                  color: AppThemes.primary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "+91 9999988888",
                  style: TextStyle(
                      color: AppThemes.primaryTextColor,
                      fontSize: 16,
                      fontFamily: AppThemes.font1,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.mail_outline_rounded,
                  color: AppThemes.primary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "loremipsum@gmail.com",
                  style: TextStyle(
                      color: AppThemes.primaryTextColor,
                      fontSize: 14.8,
                      fontFamily: AppThemes.font1,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            DefaultTabController(
              initialIndex: 1,
              length: 2,
              child: Container(
                width: 160,
                height: 31,
                decoration: BoxDecoration(
                    color: AppThemes.tabBg,
                    borderRadius: BorderRadius.circular(20)),
                child: TabBar(
                  overlayColor: const MaterialStatePropertyAll(Colors.white),
                  dividerColor: Colors.transparent,
                  padding: const EdgeInsets.all(3),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: AppThemes.background,
                  unselectedLabelColor: AppThemes.dottedBorder,

                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                      // Creates border
                      color: AppThemes
                          .tabActive), //Change background color from here
                  tabs: const [
                    Tab(
                      text: "Offline",
                    ),
                    Tab(
                      text: "Online",
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
