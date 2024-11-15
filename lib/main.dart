import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';
import 'package:thillla_mobile_frontend/Common/appbinding.dart';
import 'package:thillla_mobile_frontend/Screens/splash/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Thilla-mobile-frontend',
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppThemes.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppThemes.primary),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

