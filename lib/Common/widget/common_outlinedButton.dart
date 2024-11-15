import 'package:flutter/material.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';

class CommonOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double verticalPadding;
  final IconData? icon;
  final double horizontalPadding;
  final double borderRadius;

  const CommonOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
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
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: OutlinedButton(
            style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.white,
              foregroundColor: AppThemes.primary,
              backgroundColor: AppThemes.background,
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
                    Text(
                      text,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppThemes.primaryTextColor2),
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
