import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static const Color primary =Color.fromRGBO(188, 232, 177, 1);
  static const Color secondary = Color(0xff2A4F6D);
  static const Color labelColor = Color(0xff0ACF83);
  static const Color primarySubtle1 = Color(0xffE1CC0E);
  static const Color primarySubtle2 = Color(0xffFFFFFF);
  static const Color primarySubtle3 = Color(0xffF7F5FF);
  static const Color primarySubtle4 = Color(0xffFFFAFF);
  static const Color primary2 = Color(0xff1F1D11);
  static const Color primary3 = Color(0xff282508);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color subtle1 = Color(0xff61646B);
  static const Color subtle2 = Color(0xffAFB1B6);
  static const Color subtleDark = Color.fromRGBO(97, 100, 107, 1);
  static const Color subtleLight = Color.fromRGBO(175, 177, 182, 1);
  static const Color background = Color.fromRGBO(255, 255, 255, 1);
  static const Color surface = Color(0xffFAFAFA);
  static const Color normal = Color(0xff19191B);
  static const Color black = Color(0xff000000);
  static const Color transparent = Colors.transparent;
  static const Color purple = Color(0xffEBE3FF);
  static const Color walkthroughBlue = Color(0xffE5EDFF);
  static const Color gradient1 = Color.fromRGBO(104, 138, 95, 1);
  static const Color gradient2 = Color.fromRGBO(188, 232, 177, 1);
  static const Color textfieldBorder = Color.fromRGBO(150, 154, 164, 1);
  static const Color primaryTextColor2 = Color.fromRGBO(43, 46, 53, 1);
  static const Color headingTextColor = Color.fromRGBO(18, 18, 18, 1);
  static const Color primaryTextColor = Color.fromRGBO(87, 88, 90, 1);
  static const Color dottedBorder = Color.fromRGBO(150, 154, 164, 1);
  static const Color homeBg = Color.fromRGBO(250, 250, 250, 1);
  static const Color profileBorder = Color.fromRGBO(251, 154, 77, 1);
  static const Color profileBorder2 = Color.fromRGBO(255, 240, 228, 1);
  static const Color tabBg = Color.fromRGBO(237, 237, 237, 1);
  static const Color tabActive = Color.fromRGBO(52, 168, 83, 1);
  static const Color textFieldBorder2 = Color.fromRGBO(213, 213, 213, 1);
  static const Color successText = Color.fromRGBO(89, 89, 89, 1);
  static const Color statusColor = Color.fromRGBO(232, 31, 43, 1);
  static const Color statusColor1 = Color.fromRGBO(0, 80, 170, 1);
  static const Color statusColor2 = Color.fromRGBO(52, 168, 83, 1);


  static const Color alert = Colors.redAccent;

  static String font1 = "PlusJakartaSans";

  //constants color range for light theme
  //main color
  static const Color _lightPrimaryColor = black;

  //Background Colors
  static const Color _lightBackgroundColor = surface;

  static const Color _lightBackgroundSecondaryColor = white;

  //Text Colors
  static const Color _lightTextColor = black;
  static const Color _lightTextSecondaryColor = subtle1;

  //text theme for light theme
  static final TextTheme _lightTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32.0,
      color: _lightTextColor,
      fontWeight: FontWeight.w700,
      fontFamily: font1,
    ),
    headlineMedium: TextStyle(
      fontSize: 28.0,
      color: _lightTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: font1,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      color: _lightTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: font1,
    ),
    titleLarge: TextStyle(
      fontSize: 22.0,
      color: _lightTextColor,
      fontWeight: FontWeight.w500,
      fontFamily: font1,
    ),
    titleMedium: TextStyle(
      fontSize: 18.0,
      color: _lightTextColor,
      fontWeight: FontWeight.w500,
      fontFamily: font1,
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      color: _lightTextColor,
      fontWeight: FontWeight.w500,
      fontFamily: font1,
    ),
    labelLarge: const TextStyle(
      fontSize: 16.0,
      color: labelColor,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle(
      fontSize: 14.0,
      color: labelColor,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: const TextStyle(
      fontSize: 12.0,
      color: labelColor,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16.0,
      color: _lightTextSecondaryColor,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14.0,
      color: _lightTextSecondaryColor,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: _lightTextSecondaryColor,
      fontWeight: FontWeight.w500,
      fontFamily: font1,
    ),
  );

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: font1,
    scaffoldBackgroundColor: _lightBackgroundColor,
    primaryColor: _lightPrimaryColor,
    textTheme: _lightTextTheme,
    // backgroundColor: _lightBackgroundSecondaryColor,
    // dropdownMenuTheme: const DropdownMenuThemeData(
    //     menuStyle: MenuStyle(
    //       padding: MaterialStatePropertyAll(EdgeInsets.zero),
    //     )
    // ),
    // floatingActionButtonTheme: const FloatingActionButtonThemeData(
    //   backgroundColor: black,
    // ),
    // cardTheme: CardTheme(
    //     margin: EdgeInsets.zero,
    //     elevation: 0,
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
    appBarTheme: AppBarTheme(
      backgroundColor: _lightBackgroundColor,
      iconTheme: const IconThemeData(color: black),
      toolbarTextStyle: _lightTextTheme.bodyMedium,
      titleTextStyle: _lightTextTheme.headlineSmall,
    ),
    // listTileTheme: const ListTileThemeData(),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   type: BottomNavigationBarType.fixed,
    //   selectedIconTheme: const IconThemeData(
    //     color: _lightPrimaryColor,
    //   ),
    //   unselectedIconTheme: const IconThemeData(
    //     color: _lightTextSecondaryColor,
    //   ),
    //   selectedLabelStyle: _lightTextTheme.caption,
    //   unselectedLabelStyle: _lightTextTheme.caption,
    //   showSelectedLabels: true,
    //   showUnselectedLabels: true,
    //   unselectedItemColor: _lightTextSecondaryColor,
    //   selectedItemColor: _lightPrimaryColor,
    // ),
    // drawerTheme: const DrawerThemeData(
    //   backgroundColor: _lightBackgroundColor,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.only(
    //         topRight: Radius.circular(24), bottomRight: Radius.circular(24)),
    //   ),
    // ),
    // colorScheme: const ColorScheme.light(
    //   primary: _lightPrimaryColor,
    //   // primaryVariant: _lightBackgroundColor,
    //   // secondary: _lightSecondaryColor,
    // ),
    // snackBarTheme: const SnackBarThemeData(
    //     backgroundColor: _lightBackgroundSecondaryColor,
    //     actionTextColor: _lightBackgroundSecondaryColor),
    // iconTheme: const IconThemeData(
    //   color: subtleLight,
    // ),
    // dividerTheme: const DividerThemeData(color: subtleDark, thickness: 1),
    // popupMenuTheme:
    // const PopupMenuThemeData(color: _lightBackgroundSecondaryColor),
    // textTheme: _lightTextTheme,
    // textButtonTheme: TextButtonThemeData(
    //     style: ButtonStyle(
    //       animationDuration: const Duration(milliseconds: 2000),
    //       backgroundColor: MaterialStateProperty.all(_lightPrimaryColor),
    //       textStyle: MaterialStateProperty.all(_lightTextTheme.titleLarge),
    //       shape: MaterialStateProperty.all(
    //         RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(10.0),
    //         ),
    //       ),
    //     )),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //     style: ButtonStyle(
    //         animationDuration: const Duration(milliseconds: 2000),
    //         backgroundColor: MaterialStateProperty.all(_lightBackgroundColor),
    //         textStyle: MaterialStateProperty.all(_lightTextTheme.titleLarge),
    //         shape: MaterialStateProperty.all(
    //           RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(12.0),
    //           ),
    //         ),
    //         side: MaterialStateProperty.all(
    //             const BorderSide(color: _lightPrimaryColor, width: 1)))),
    // buttonTheme: ButtonThemeData(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //     buttonColor: _lightPrimaryColor,
    //     textTheme: ButtonTextTheme.primary),
    // unselectedWidgetColor: _lightPrimaryColor,
    // radioTheme: RadioThemeData(
    //   fillColor: MaterialStateProperty.all(Color(0xffDC7A39)),
    // ),
    // checkboxTheme: CheckboxThemeData(
    //   fillColor: MaterialStateProperty.all(Color(0xffDC7A39)),
    // ),
    inputDecorationTheme: const InputDecorationTheme(
      // filled: true,
      // fillColor: Colors.white,
      prefixStyle: TextStyle(color: black),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffCFCFCF)),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffCFCFCF)),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffCFCFCF)),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      contentPadding: EdgeInsets.fromLTRB(20, 14.4, 10, 20),
      fillColor: Colors.white,
    ),
  );
}