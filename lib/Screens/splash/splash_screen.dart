import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thillla_mobile_frontend/Common/common_assets.dart';
import 'package:thillla_mobile_frontend/Controllers/splash_controller.dart';

import '../../Common/app_themes.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  static const String routeName = "/splashScreen";

  final SplashController controller = Get.put(SplashController());


  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppThemes.gradient1, AppThemes.gradient2])),
      child: Scaffold(backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(flex: 1,
              child: ClipPath(clipper: CustomClipPath(),
                child: Container(
                  decoration: const BoxDecoration(color: AppThemes.background),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: SizedBox(height: 60,width: 120,
                    child: Image.asset(CommonAssets.logo))),
            Expanded(flex: 1,
              child: ClipPath(clipper: CustomClipPath2(),
                child: Container(
                  decoration: const BoxDecoration(color: AppThemes.background),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

   final path=Path();
    path.moveTo(size.width*-0.0037375,size.height*-0.0066400);
    path.quadraticBezierTo(size.width*-0.0018625,size.height*0.1570400,size.width*-0.0029000,size.height*0.4072000);
    path.cubicTo(size.width*-0.0025000,size.height*0.0921000,size.width*0.7921500,size.height*0.4221000,size.width*1.0041375,size.height*0.7055400);
    path.quadraticBezierTo(size.width*1.0044500,size.height*0.4547000,size.width*0.9987500,size.height*-0.0040000);

   return path;


  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {


    return false;
  }
}
class CustomClipPath2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    final path=Path();
    path.moveTo(size.width*0.0004250,size.height*0.5006200);
    path.lineTo(size.width*0.0012375,size.height*1.0144600);
    path.lineTo(size.width*1.0058750,size.height*1.0051400);
    path.quadraticBezierTo(size.width*1.0015625,size.height*0.6020400,size.width*1.0020750,size.height*0.5000400);
    path.quadraticBezierTo(size.width*0.5623375,size.height*0.7841200,size.width*0.0004250,size.height*0.5006200);
    path.close();
    return path;


  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {


    return false;
  }
}



