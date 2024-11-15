import 'package:flutter/material.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';

class CommonStatusButton extends StatelessWidget {
  final String text;
  final String status;
  final VoidCallback onPressed;
  final double verticalPadding;
  final IconData? icon;
  final double horizontalPadding;
  final double borderRadius;
  final Color statusColor;

  const CommonStatusButton({
    super.key,
    required this.text,
    required this.status,
    required this.onPressed,
    required this.statusColor,
    this.verticalPadding = 25,
    this.horizontalPadding = 120,
    this.borderRadius = 6,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: 75,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.white,
              foregroundColor: AppThemes.primary,
              backgroundColor: AppThemes.background,
              shadowColor: AppThemes.primaryTextColor,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (icon != null)
                      Icon(
                        icon,
                        color: AppThemes.primaryTextColor2,
                      ),
                    const SizedBox(
                      width: 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          text,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppThemes.primaryTextColor2),
                        ),
                        Text(
                          status,
                          style:  TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: statusColor),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppThemes.dottedBorder,
                )
              ],
            )),
      ),
    );
  }
}
