import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Screens/Auth/login_screen.dart';


class SplashController extends GetxController{

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () async{
      // final sharedPref = await SharedPreferences.getInstance();
      // final isLoggedIn = sharedPref.getBool(AppConstants.isLoggedIn)??false;
      // isLoggedIn?
      Get.offAll(() => const LoginScreen()) ;
      //     :
      // Get.offAll(const LanguageSelectionScreen());
    });
  }
}