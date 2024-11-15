import 'package:flutter/material.dart';

import 'app_themes.dart';
import 'common_assets.dart';

class CustomClippers extends StatelessWidget {
  const CustomClippers({super.key});

  @override
  Widget build(BuildContext context) {
    return  ClipPath(
        clipper: CustomClipPath(),
        child: Container(
          height: MediaQuery.of(context).size.height / 1.6,
          decoration: const BoxDecoration(color: AppThemes.gradient2),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        CommonAssets.star,
                      ),
                      Image.asset(
                        CommonAssets.star,
                      ),
                    ],),
                  const SizedBox(height: 18,),
                  Image.asset(
                    CommonAssets.star,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        CommonAssets.star,
                      ),
                      Image.asset(
                        CommonAssets.group,
                        height: MediaQuery.of(context).size.height / 3.3,
                        width: MediaQuery.of(context).size.width/1.4,
                      ),
                      Image.asset(
                        CommonAssets.star,
                      ),],)
                ],),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 10),
                  child: Text(
                    "Be a Thilaa Partner",
                    style: TextStyle(
                        fontFamily: AppThemes.font1,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Get a stable monthly \nincome",
                    style: TextStyle(
                        fontFamily: AppThemes.font1,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * -0.0020750, size.height * -0.0113800);
    path.quadraticBezierTo(size.width * -0.0039625, size.height * 0.6830000,
        size.width * -0.0037625, size.height * 0.9064600);
    path.cubicTo(
        size.width * -0.0088500,
        size.height * 1.0071200,
        size.width * 0.9284625,
        size.height * 0.9124800,
        size.width * 1.0008750,
        size.height * 0.7011400);
    path.quadraticBezierTo(size.width * 1.0018000, size.height * 0.5508600,
        size.width * 1.0020750, size.height * -0.0039600);
    path.lineTo(size.width * -0.0020750, size.height * -0.0113800);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
