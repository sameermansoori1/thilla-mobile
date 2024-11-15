import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



class LoginController extends GetxController {
  var isAgreed = true.obs;
  final TextEditingController mobileController = TextEditingController();
  var mobileNumber = ''.obs;
  var errorMessage = ''.obs;


  bool get isValidMobileNumber {
    if (mobileNumber.value.isEmpty) {
      errorMessage.value = 'Please enter a mobile number';
      return false;
    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(mobileNumber.value)) {
      errorMessage.value = 'Please enter a valid mobile number';
      return false;
    }
    errorMessage.value = ''; // Clear error message if no errors
    return true;
  }

  void updateMobileNumber(String value) {
    mobileNumber.value = value;
  }

  void toggleAgreement(bool value) {
    isAgreed.value = value;
  }
}