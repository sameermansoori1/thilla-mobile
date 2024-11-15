
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';

class CustomProfileButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double verticalPadding;
  final IconData? icon;
  final String ?svgAssetPath;
  final double horizontalPadding;
  final double borderRadius;

  const CustomProfileButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.verticalPadding = 25,
    this.horizontalPadding = 120,
    this.borderRadius = 6,
    this.icon,
    this.svgAssetPath
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: SizedBox(
        height: 54,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.white,
              foregroundColor: AppThemes.primary,
              backgroundColor: AppThemes.background,
              shadowColor: AppThemes.primaryTextColor,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [if (svgAssetPath!= null)
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: SvgPicture.asset(
                        svgAssetPath!,
                        color: AppThemes.primary,
                      ),
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
                  color: AppThemes.primary,
                )
              ],
            )),
      ),
    );
  }
}
