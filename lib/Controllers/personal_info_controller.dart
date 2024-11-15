import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../Screens/Welcome_Screen/welcome_screen.dart';

class PersonalInfoController extends GetxController {
  RxString selectedImagePath = ''.obs;
  RxString selectedImagePath2 = ''.obs;
  var selectedDate = Rx<DateTime?>(null);
  var dropdownValue = RxInt(0);
  var dropdownItems = <DropdownMenuItem<int>>[];
  final TextEditingController dateController = TextEditingController();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController fathersNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

  final TextEditingController primaryMobileNumberController =
      TextEditingController();
  final TextEditingController whatsappNumberController =
      TextEditingController();
  final TextEditingController secondaryMobileNumberController =
      TextEditingController();
  final TextEditingController bloodGroupController = TextEditingController();

  Future<void> submit(BuildContext context) async {
    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        fathersNameController.text.isEmpty ||
        dateController.text.isEmpty ||
        primaryMobileNumberController.text.isEmpty ||
        whatsappNumberController.text.isEmpty ||
        bloodGroupController.text.isEmpty) {
      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          textStyle: TextStyle(
              fontFamily: AppThemes.font1,
              color: AppThemes.background,
              fontWeight: FontWeight.w500),
          message: "Note! Please check all the required(*) fields should not be empty",
        ),
      );
    } else {
      Get.offAll(() => const WelcomeScreen());
    }
  }

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImagePath.value = image.path.toString();
    } else {
      Get.snackbar("Error", "No Selected Image",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // final TextEditingController _dateController = TextEditingController();
  Future getImage2() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImagePath2.value = image.path.toString();
    } else {
      Get.snackbar("Error", "No Selected Image",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void onDateSelected(BuildContext context) async {
    var datePicked = await DatePicker.showSimpleDatePicker(
      context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2090),
      dateFormat: "dd/MMMM/yyyy",
      locale: DateTimePickerLocale.en_us,
      looping: true,
    );

    if (datePicked != null) {
      selectedDate.value = datePicked;
      dropdownValue.value = 1;
      dropdownItems = [
        DropdownMenuItem(
          value: 1,
          child: Text(DateFormat('dd/MMMM/yyyy').format(datePicked)),
        ),
      ];
      update();
      if (kDebugMode) {
        print(selectedDate.value);
      }
    }
  }
}
