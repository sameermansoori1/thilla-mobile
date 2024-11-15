
import 'package:flutter/material.dart';

import '../app_themes.dart';

class TotalEarning extends StatelessWidget {
  const TotalEarning({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Orders Delivered :",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppThemes.headingTextColor,
                  ),
                ),
                Text(
                  "435",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.headingTextColor,
                  ),
                ),
              ],),
            const SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Base Salary :",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppThemes.headingTextColor,
                  ),
                ),
                Text(
                  "₹ 18,000",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.headingTextColor,
                  ),
                ),
              ],),
            const SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bonus :",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppThemes.headingTextColor,
                  ),
                ),
                Text(
                  "₹ 8,000",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.headingTextColor,
                  ),
                ),
              ],),
            const SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tips :",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppThemes.headingTextColor,
                  ),
                ),
                Text(
                  "₹ 589.90",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.headingTextColor,
                  ),
                ),
              ],),
            const SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total :",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppThemes.headingTextColor,
                  ),
                ),
                Text(
                  "₹25589.09",
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppThemes.headingTextColor,
                  ),
                ),
              ],),
          ],
        ),
      ),
    );
  }
}
