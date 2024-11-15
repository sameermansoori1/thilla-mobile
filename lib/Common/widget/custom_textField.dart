import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.title,
      this.textEditingController,
      this.readOnly = false,
      this.keyboardType = TextInputType.text,
      this.inputFormatters,
      this.hintText,
      this.errorText,
      this.prefixIcon,
      this.suffixIcon,
      this.onChanged,
      this.onTap,
      this.errorStyle,
      this.maxLines});

  final String? title;
  final TextStyle? errorStyle;
  final String? hintText;
  final String? errorText;
  final TextEditingController? textEditingController;
  final bool readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final Function()? onTap;
  final int? maxLines;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    bool showError = errorText != null && errorText!.isNotEmpty;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Text(
          title ?? "",
          style: TextStyle(
            fontFamily: AppThemes.font1,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppThemes.headingTextColor,
          ),
        )
            : const SizedBox(),
        const SizedBox(height: 5),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: showError ? 80 : 56, // Adjust height based on error message
          child: TextField(
            keyboardType: keyboardType,
            controller: textEditingController,
            readOnly: readOnly,
            inputFormatters: inputFormatters,
            maxLines: maxLines,
            style: Theme.of(context).textTheme.titleMedium,
            onChanged: onChanged,
            onTap: onTap,
            decoration: InputDecoration(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppThemes.primary),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppThemes.textFieldBorder2),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppThemes.textFieldBorder2),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              prefixIcon: prefixIcon,
              errorStyle: errorStyle,
              suffixIcon: suffixIcon,
              errorText: errorText,
              fillColor: AppThemes.background,
              filled: true,
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: const Color(0xff737373),
                  fontWeight: FontWeight.w200,
                  fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }}
