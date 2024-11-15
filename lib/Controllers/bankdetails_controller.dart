

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankDetailsController extends GetxController{
  final bankNameController = TextEditingController();
  final accountNameController = TextEditingController();
  final ifscController = TextEditingController();
  final accountHolderNameController = TextEditingController();

  var bankNameError = Rx<String?>(null);
  var accountNumberError = Rx<String?>(null);
  var ifscError = Rx<String?>(null);
  var accountHolderNameError = Rx<String?>(null);

  bool validate() {
    bool isValid = true;

    bankNameError.value = null;
    accountNumberError.value = null;
    ifscError.value = null;
    accountHolderNameError.value = null;

    if (bankNameController.text.isEmpty) {
      bankNameError.value = "Bank Name is required";
      isValid = false;
    }
    if (accountNameController.text.isEmpty) {
      accountNumberError.value = "Account Number is required";
      isValid = false;
    }
    if (ifscController.text.isEmpty) {
      ifscError.value = "IFSC is required";
      isValid = false;
    }
    if (accountHolderNameController.text.isEmpty) {
      accountHolderNameError.value = "Account Holder Name is required";
      isValid = false;
    }

    return isValid;
  }

  @override
  void dispose() {
    bankNameController.dispose();
    accountNameController.dispose();
    ifscController.dispose();
    accountHolderNameController.dispose();
    super.dispose();
  }
}
//he