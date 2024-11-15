import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Controllers/Navigation_Bar_Controllers/accountPage_controller.dart';
import 'package:thillla_mobile_frontend/Controllers/Navigation_Bar_Controllers/ordersPage_controller.dart';
import 'package:thillla_mobile_frontend/Controllers/account_controller.dart';
import 'package:thillla_mobile_frontend/Controllers/drivinglicense_controller.dart';
import 'package:thillla_mobile_frontend/Controllers/homepage_controller.dart';
import 'package:thillla_mobile_frontend/Controllers/login_controller.dart';
import 'package:thillla_mobile_frontend/Controllers/order_controller.dart';
import 'package:thillla_mobile_frontend/Controllers/pancard_controller.dart';

import '../Controllers/aadharcard_controller.dart';
import '../Controllers/bankdetails_controller.dart';
import '../Controllers/personal_info_controller.dart';
import '../Controllers/registrationcertificate_controller.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => AadharCardController(), fenix: true);
    Get.lazyPut(() => PanCardController(), fenix: true);
    Get.lazyPut(() => DrivingLicenseController(), fenix: true);
    Get.lazyPut(() => RegistrationCertificateController(), fenix: true);
    Get.lazyPut(() => HomePageController(), fenix: true);
    Get.lazyPut(() => OrdersPageController(), fenix: true);
    Get.lazyPut(() => AccountPageController(), fenix: true);
    Get.lazyPut(() => PersonalInfoController(), fenix: true);
    Get.lazyPut(() => AccountController(), fenix: true);
    Get.lazyPut(() => OrderController(), fenix: true);
    Get.lazyPut(() => BankDetailsController(), fenix: true);

  }
}

