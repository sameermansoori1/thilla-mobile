import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../app_themes.dart';

class CommonCardWidget extends StatelessWidget {
  final RxString selectedImagePath;
  final String text;
  final Function getImage;

  const CommonCardWidget({
    super.key,
    required this.selectedImagePath,
    required this.getImage,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1.0, right: 1.0),
      child: DottedBorder(
        color: AppThemes.dottedBorder,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        padding: const EdgeInsets.all(6),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 10),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.primaryTextColor,
                  ),
                ),
                const SizedBox(height: 20),
                Obx(
                      () => Column(
                    children: [
                      if (selectedImagePath.isNotEmpty)
                        DottedBorder(
                          color: AppThemes.dottedBorder,
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(12),
                          padding: const EdgeInsets.all(6),
                          child: Container(
                            width: 153,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: selectedImagePath.isNotEmpty
                                  ? DecorationImage(
                                image: FileImage(File(selectedImagePath.value)),
                                fit: BoxFit.fill,
                              )
                                  : null,
                            ),
                          ),
                        ),
                     const SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: ElevatedButton(
                          onPressed: getImage as void Function()?,
                          style: ButtonStyle(
                            shadowColor: MaterialStateProperty.all(AppThemes.primaryTextColor),
                            elevation: MaterialStateProperty.all(4.0),
                            backgroundColor: MaterialStateProperty.all(AppThemes.background),
                            surfaceTintColor: MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.camera_alt,
                                color: AppThemes.primary,
                              ),
                              Text(
                                " Upload Photo",
                                style: TextStyle(
                                  color: AppThemes.primary,
                                  fontFamily: AppThemes.font1,
                                  fontSize: 15.2,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//