import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
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
      this.maxLines});

  final String? title;
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
                  fontWeight: FontWeight.w400,
                  color: AppThemes.primaryTextColor,
                ),
              )
            : const SizedBox(),
        const SizedBox(height: 8),
        SizedBox(

          width: MediaQuery.of(context).size.width ,
          height: 47,
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
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                border: OutlineInputBorder(
                  // Add border to the input field
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppThemes.textfieldBorder),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppThemes.textfieldBorder),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                errorText: errorText,
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: const Color(0xff737373),
                    fontWeight: FontWeight.w200,
                    fontSize: 18),
              )),
        ),
      ],
    );
  }
}
