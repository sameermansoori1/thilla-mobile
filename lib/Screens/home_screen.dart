import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/common_assets.dart';
import 'package:thillla_mobile_frontend/Controllers/homepage_controller.dart';
import '../Common/app_themes.dart';
import '../Common/widget/custom_bottombar.dart';
import 'Navigation_Bar_Pages/Account/account_page.dart';
import 'Navigation_Bar_Pages/Orders/orders_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller) {
      return Scaffold(
        backgroundColor: AppThemes.homeBg,
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            OrdersPage(),
            AccountPage(),
          ],
        ),
        bottomNavigationBar: CustomAnimatedBottomBar(
          containerHeight: 80,
          backgroundColor: AppThemes.background,
          selectedIndex: controller.tabIndex,
          showElevation: true,
          itemCornerRadius: 10,
          curve: Curves.easeIn,
          onItemSelected: controller.changeTabIndex,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              title: const Text('Orders'),
              iconAsset: CommonAssets.order2,
              activeColor: AppThemes.primary,
              inactiveColor: AppThemes.headingTextColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              title: const Text('Account'),
              iconAsset: CommonAssets.account,
              activeColor: AppThemes.primary,
              inactiveColor: AppThemes.headingTextColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    });
  }
}
