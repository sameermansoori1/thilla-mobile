import 'package:flutter/material.dart';

import '../app_themes.dart';

class CommonAppButton extends StatelessWidget {
  const CommonAppButton(
      {super.key,
      this.title = "",
      required this.onPressed,
      this.borderRadius = 50,
      this.isOutlinedButton = false,
      this.showPadding = true,
      this.childWidget,
      this.width,
      this.height,
      this.color,
      this.textColor});

  final String? title;
  final Widget? childWidget;
  final double borderRadius;
  final Color? textColor;
  final Color? color;
  final bool isOutlinedButton;
  final bool showPadding;
  final double? width;
  final double? height;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: showPadding
          ? const EdgeInsets.fromLTRB(30, 8, 30, 22)
          : EdgeInsets.zero,
      child: SizedBox(
        height: height ?? 50,
        width: width ?? double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(isOutlinedButton
                  ? AppThemes.white
                  : color ?? AppThemes.primary),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  // side:
                  // const BorderSide(color: Color(0xffF79633)),
                  borderRadius: BorderRadius.circular(borderRadius)))),
          onPressed: onPressed,
          child: title == ""
              ? childWidget
              : Text(
                  title ?? "",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isOutlinedButton
                          ? AppThemes.primary
                          : textColor ?? AppThemes.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
        ),
      ),
    );
  }
}
