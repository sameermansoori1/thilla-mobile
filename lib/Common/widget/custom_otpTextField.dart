
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../app_themes.dart';
class CustomOtpTextField extends StatelessWidget {
  const CustomOtpTextField({
    super.key,
    this.numberOfFields = 6,
    this.fieldWidth,
    this.showFieldAsBox = true,
    this.hasCustomInputDecoration = true,
    this.decoration,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.cursorColor = AppThemes.primary,
    this.focusedBorderColor = AppThemes.primary,
  });

  final int numberOfFields;
  final double? fieldWidth;
  final bool showFieldAsBox;
  final bool hasCustomInputDecoration;
  final InputDecoration ?decoration;
  final BorderRadius borderRadius;
  final Color cursorColor;
  final Color focusedBorderColor;

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: numberOfFields,
      fieldWidth: fieldWidth ?? MediaQuery.of(context).size.width / 7.6,
      showFieldAsBox: showFieldAsBox,
      hasCustomInputDecoration: hasCustomInputDecoration,
      decoration: decoration ?? InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppThemes.primary),
          borderRadius: borderRadius,
        ),
        counterText: "",
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      borderRadius: borderRadius,
      cursorColor: cursorColor,
      focusedBorderColor: focusedBorderColor,
    );
  }
}
