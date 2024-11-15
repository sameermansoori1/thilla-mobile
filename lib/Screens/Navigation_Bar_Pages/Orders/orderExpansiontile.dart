
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:thillla_mobile_frontend/Common/common_assets.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';
import 'package:thillla_mobile_frontend/Controllers/order_controller.dart';

import '../../../Common/app_themes.dart';
import 'ordertrackingpage.dart';



class OrderExpansionTile extends GetView<OrderController> {
  const OrderExpansionTile({super.key,

    required this.isExpanded,
    required this.onExpansionChanged,
    required this.orderNumber,
    required this.status,
    required this.statusTextColor,
    required this.statusColor,
     this.controller1,



  });
  final bool isExpanded;
  final Function(bool) onExpansionChanged;
  final String orderNumber;
  final String status;
  final Color statusTextColor;
  final Color statusColor;
  final ExpansionTileController ?controller1;



  @override
  Widget build(BuildContext context) {
    return  Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,

        dividerTheme: const DividerThemeData(
          thickness: 0,
          space: 0,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: AppThemes.background,
            boxShadow: const [

                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                ),
            ],
            borderRadius: BorderRadius.circular(15)),
        child: SingleChildScrollView(
          child: ExpansionTile(controller: controller1,
            trailing: const SizedBox(),
            onExpansionChanged: onExpansionChanged,
            title: Container(
              transform: Matrix4.translationValues(15, 7, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Order No.",
                            style: TextStyle(
                                fontFamily: AppThemes.font1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppThemes.primaryTextColor2),),
                          Text(orderNumber,
                            style: TextStyle(
                                fontFamily: AppThemes.font1,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppThemes.primaryTextColor2),),
                        ],
                      ),
                      Container(
                        height: 23,padding: const EdgeInsets.only(right: 4,left: 4),
                        decoration: BoxDecoration(
                          color: statusColor,
                          borderRadius: BorderRadius.circular(5)
                        ),
                          child: Text(status,textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: AppThemes.font1,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: statusTextColor),)),
                    ],
                  ),
                  if (!isExpanded)
                    const Icon(Icons.keyboard_arrow_down)
                  else
                    const SizedBox(height: 20,),
                ],
              ),
            ),
            children: [
              const SizedBox(
                height: 10,
              ),
              const DottedLine(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(CommonAssets.userLogo),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Aman Sharma",
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppThemes.primaryTextColor2),
                        ),
                         SizedBox(
                          width: MediaQuery.of(context).size.width/10,
                        ),
                        SvgPicture.asset(CommonAssets.phone),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(CommonAssets.pick,),
                        const SizedBox(
                          width: 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pickup Centre",
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primaryTextColor2),
                            ),
                            Text(
                              "Nikhita Stores, 201/B, Nirant\nApts, Andheri East 400069",
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primaryTextColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    CommonAssets.item,
                                    width: 70,
                                    height: 68,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Besan Ladoo",
                                              style: TextStyle(
                                                  fontFamily: AppThemes.font1,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: AppThemes
                                                      .primaryTextColor2),
                                            ),
                                            const SizedBox(width: 3,),
                                            SvgPicture.asset(
                                              CommonAssets.veg,

                                            ),
                                          ],
                                        ),
                                        Text(
                                          "500gm",
                                          style: TextStyle(
                                              fontFamily: AppThemes.font1,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppThemes
                                                  .primaryTextColor2),
                                        ),
                                        Text(
                                          "Qty: 2",
                                          style: TextStyle(
                                              fontFamily: AppThemes.font1,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: AppThemes
                                                  .primaryTextColor2),
                                        ),
                                      ],
                                    ),
                                  ),
                                ])
                          ],
                        ),

                        SvgPicture.asset(CommonAssets.phone),
                         const SizedBox(
                           width: 8
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() =>   OrderTrackingPage());
                          },
                            child: SvgPicture.asset(CommonAssets.send)),
                      ],
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(color: AppThemes.primaryTextColor,endIndent: 10.0,indent: 10.0,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(CommonAssets.pick,),
                        const SizedBox(
                          width: 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pickup Centre-2",
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primaryTextColor2),
                            ),
                            Text(
                              "Ananta Stores, 204/C, Apts\nAndheri East 400069",
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primaryTextColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    CommonAssets.item,
                                    width: 70,
                                    height: 68,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Atta Ladoo",
                                              style: TextStyle(
                                                  fontFamily: AppThemes.font1,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: AppThemes
                                                      .primaryTextColor2),
                                            ),
                                            const SizedBox(width: 5,),
                                            SvgPicture.asset(
                                              CommonAssets.veg,

                                            ),
                                          ],
                                        ),
                                        Text(
                                          "500gm",
                                          style: TextStyle(
                                              fontFamily: AppThemes.font1,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppThemes
                                                  .primaryTextColor2),
                                        ),
                                        Text(
                                          "Qty: 2",
                                          style: TextStyle(
                                              fontFamily: AppThemes.font1,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: AppThemes
                                                  .primaryTextColor2),
                                        ),
                                      ],
                                    ),
                                  ),
                                ])
                          ],
                        ),

                        SvgPicture.asset(CommonAssets.phone),
                         const SizedBox(
                             width: 8
                        ),
                        GestureDetector(
                          onTap: () {

                            Get.to(() =>   OrderTrackingPage());
                          },
                            child: SvgPicture.asset(CommonAssets.send)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(CommonAssets.location2,),
                        const SizedBox(
                          width: 3,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primaryTextColor2),
                            ),
                            Text(
                              "201/D, Ananta Apts, Near\nJal Bhawan, Andheri 400069",
                              style: TextStyle(
                                  fontFamily: AppThemes.font1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppThemes.primaryTextColor),
                            ),


                          ],
                        ),

                        SvgPicture.asset(CommonAssets.phone,color: Colors.transparent,),
                        const SizedBox(
                            width: 8
                        ),
                        GestureDetector(
                            onTap: () {

                              Get.to(() =>   OrderTrackingPage());
                            },
                            child: SvgPicture.asset(CommonAssets.send)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(CommonAssets.money,),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "₹ 2300",
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppThemes.primaryTextColor2),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        SvgPicture.asset(CommonAssets.done,),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Paid",
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppThemes.tabActive),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 137,
                      decoration: BoxDecoration(color:
                      AppThemes.primary,borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                Text(
                                  "Tomorrow\n5:30 PM, Thu, 25/08/2023",
                                  style: TextStyle(
                                      fontFamily: AppThemes.font1,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppThemes.primaryTextColor2),
                                ),
                                Container(
                                  height: 62,
                                  width: MediaQuery.of(context).size.width/3.8,
                                  decoration: BoxDecoration(color:
                                  AppThemes.background,borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(CommonAssets.time,),
                                          Text(
                                            "TIME LEFT",textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: AppThemes.font1,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: AppThemes.primary),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "1:04 Hrs",textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: AppThemes.font1,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: AppThemes.primaryTextColor2),
                                      ),
                                    ],
                                  ),
                                )

                              ],),
                            const SizedBox(height: 10,),
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 32,
                                  width: 169,
                                  decoration: BoxDecoration(color:
                                  AppThemes.background,borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Text(
                                      "Select an option",textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: AppThemes.font1,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: AppThemes.primaryTextColor),
                                    ),
                                  ),),
                              ],
                            )
                          ],),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CommonAppButton(onPressed: () {
                      Get.to(() =>   OrderTrackingPage());
                    }, title: "Accept",showPadding: false,)

                  ],
                ),
              ),
              const Icon(Icons.keyboard_arrow_up)
            ],
          ),
        ),
      ),
    );
  }
}
