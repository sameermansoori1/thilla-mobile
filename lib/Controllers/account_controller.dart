
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AccountController extends GetxController {
  var name = 'Aman Sharma'.obs;
  var phone = '+919999988888'.obs;
  var email = 'loremipsum@gmail.com'.obs;
  var city = 'Bangalore, India'.obs;
  var code = 'KJTRJ56487'.obs;
  var random = 'loremipsum'.obs;



  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;
  late TextEditingController cityController;
  late TextEditingController codeController;
  late TextEditingController randomController;
  RxString selectedImagePath = ''.obs;
  RxString selectedImagePath2 = ''.obs;


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


  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController(text: name.value);
    phoneController = TextEditingController(text: phone.value);
    emailController = TextEditingController(text: email.value);
    cityController = TextEditingController(text: city.value);
    codeController = TextEditingController(text: code.value);
    randomController = TextEditingController(text: random.value);

  }

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    cityController.dispose();
    codeController.dispose();
    randomController.dispose();

    super.onClose();
  }

  // Method to update location
  void updateCity(String newLocation) {
    city.value = newLocation;
  }
}