import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:svg_flutter/svg.dart';
import 'package:thillla_mobile_frontend/Common/date_picker.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import 'package:thillla_mobile_frontend/Controllers/order_controller.dart';
import '../../../Common/app_themes.dart';
import '../../../Common/common_assets.dart';
import 'orderExpansiontile.dart';

class OrdersPage extends GetView<OrderController> {
  const OrdersPage({super.key});

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
            SvgPicture.asset(CommonAssets.order),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Orders",
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
        padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 175,
                  height: 30,
                  decoration: BoxDecoration(
                    color: AppThemes.background,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TabBar(
                    controller: controller.tabController,
                    overlayColor: MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.transparent; // Adjust the opacity as needed
                      }
                      return Colors.transparent;
                    }),
                    dividerColor: Colors.transparent,
                    padding: EdgeInsets.all(0),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: AppThemes.headingTextColor,
                    unselectedLabelColor: AppThemes.headingTextColor,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppThemes.primary,
                    ),
                    tabs: [
                      InkWell(
                        child: Tab(
                          text: "Request",
                        ),
                      ),
                      InkWell(
                        child: Tab(
                          text: "Delivery",
                        ),
                      ),
                    ],
                  ),
                ),
                const CustomDatePicker(),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  Builder(
                    builder: (context) {
                      if (controller.requestItems.isEmpty) {
                        return Center(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              height: 279,
                              width: 275,
                              CommonAssets.emptyOrder,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "No New Orders",
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primaryTextColor2),
                            ),
                          ],
                        ));
                      } else {
                        return ListView.builder(
                          itemCount: controller.requestItems.length,
                          controller: controller.scrollController,
                          itemBuilder: (BuildContext context, int index) {
                            // Add your item builder logic here
                            return Column(
                              children: [
                                const SizedBox(height: 15,),
                                Container(
                                  height: 128,
                                  decoration: BoxDecoration(
                                      color: AppThemes.background,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 2,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Order No.",
                                                  style: TextStyle(
                                                      fontFamily: AppThemes.font1,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      color: AppThemes
                                                          .primaryTextColor2),
                                                ),
                                                Text(
                                                  '#1150',
                                                  style: TextStyle(
                                                      fontFamily: AppThemes.font1,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400,
                                                      color: AppThemes
                                                          .primaryTextColor2),
                                                ),
                                              ],
                                            ),
                                            Container(
                                                height: 23,

                                                padding: const EdgeInsets.only(
                                                    right: 4, left: 4),
                                                decoration: BoxDecoration(
                                                    color: AppThemes.primary
                                                        .withOpacity(0.6),
                                                    borderRadius:
                                                        BorderRadius.circular(5)),
                                                child: Text(
                                                  '5.09km',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: AppThemes.font1,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w400,
                                                      color: AppThemes.statusColor2),
                                                )),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CommonAppButton(
                                              onPressed: () {},
                                              title: "Accept",
                                              showPadding: false,
                                              width: MediaQuery.of(context).size.width/2.3,
                                              height: 38,
                                            ),
                                            CommonAppButton(
                                              onPressed: () {
                                                controller.tabController.animateTo(1);
                                                // controller.isExpanded1[index].value = true;
                                                controller.scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.ease);

                                              },
                                              title: "View Details",
                                              showPadding: false,
                                              width: MediaQuery.of(context).size.width/2.3,
                                              height: 38,
                                              color: AppThemes.background,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                  Builder(
                    builder: (context) {
                      if (controller.deliveryItems.isEmpty) {
                        return Center(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              height: 279,
                              width: 275,
                              CommonAssets.emptyOrder,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "No New Orders",
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primaryTextColor2),
                            ),
                          ],
                        ));
                      } else {
                        return Column(
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              "Tap to Expand",
                              style: TextStyle(
                                fontFamily: AppThemes.font1,
                                color: AppThemes.dottedBorder,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: controller.deliveryItems.length,
                                itemBuilder: (BuildContext context, index) {
                                  return Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Obx(
                                        () => OrderExpansionTile(
                                          onExpansionChanged: (bool expanded) {
                                            controller.isExpanded1[index]
                                                .value = expanded;
                                          },
                                          isExpanded: controller
                                              .isExpanded1[index].value,
                                          orderNumber: "#11250",
                                          status: "Pickup Pending",
                                          statusTextColor: AppThemes
                                              .statusColor2
                                              .withOpacity(0.3),
                                          statusColor: AppThemes.statusColor2
                                              .withOpacity(0.04),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Obx(
                                        () => OrderExpansionTile(
                                          onExpansionChanged: (bool expanded) {
                                            // Update the expansion state
                                            controller.isExpanded2[index]
                                                .value = expanded;
                                          },
                                          isExpanded: controller
                                              .isExpanded2[index].value,
                                          orderNumber: "#11251",
                                          status: "Pickup Failed",
                                          statusTextColor:
                                              AppThemes.statusColor,
                                          statusColor: AppThemes.statusColor
                                              .withOpacity(0.05),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Obx(
                                        () => OrderExpansionTile(
                                          onExpansionChanged: (bool expanded) {
                                            // Update the expansion state
                                            controller.isExpanded3[index]
                                                .value = expanded;
                                          },
                                          isExpanded: controller
                                              .isExpanded3[index].value,
                                          orderNumber: "#11252",
                                          status: "Pickup Rescheduled",
                                          statusTextColor:
                                              AppThemes.statusColor1,
                                          statusColor: AppThemes.statusColor1
                                              .withOpacity(0.05),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
