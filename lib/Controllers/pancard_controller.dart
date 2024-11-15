

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PanCardController extends GetxController {


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


}