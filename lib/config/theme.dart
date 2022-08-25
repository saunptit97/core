import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel/utils/colors.dart';

final ThemeData defaultTheme = ThemeData(
  primaryColor: ColorUtils.primaryColor,
  primarySwatch: Colors.grey,
  backgroundColor: ColorUtils.greyF9,
  scaffoldBackgroundColor: ColorUtils.greyF9,
  canvasColor: Colors.white,
  // accentColor: Consts.primaryColor,
  // buttonColor: Colors.blue[900],
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: ColorUtils.primaryColor,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: ColorUtils.primaryColor,
    selectionColor: ColorUtils.primaryColor,
    selectionHandleColor: ColorUtils.primaryColor,
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.black.withOpacity(0.85),
    ),
    shape: const ContinuousRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24.0),
        bottomRight: Radius.circular(24.0),
      ),
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      // Status bar color
      statusBarColor: Colors.white,
      // Status bar brightness (optional)
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ),
  ),
  colorScheme: ColorScheme(
    primary: ColorUtils.primaryColor,
    primaryContainer: Colors.grey,
    secondary: ColorUtils.primaryColor,
    secondaryContainer: Colors.grey,
    surface: Colors.blue[900]!,
    background: const Color(0xFFECF1F7),
    error: Colors.redAccent,
    onPrimary: Colors.black,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  fontFamily: 'OpenSan',
  disabledColor: Colors.black45,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorUtils.greyB9,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(29),
      borderSide: const BorderSide(color: ColorUtils.greyD7),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(29),
      borderSide: const BorderSide(color: ColorUtils.greyD7),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(29),
      borderSide: const BorderSide(color: ColorUtils.greyD7),
    ),
    fillColor: ColorUtils.greyF9,
    filled: true,
  ),
  checkboxTheme: const CheckboxThemeData(
    splashRadius: 3,
  ),
  textTheme: TextTheme(
    headline3: const TextStyle(
      color: ColorUtils.blue05,
      height: 1.3,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      fontFamily: 'OpenSan',
    ),
    headline4: const TextStyle(
      color: ColorUtils.blue05,
      height: 1.3,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      fontFamily: 'OpenSan',
    ),
    headline5: const TextStyle(
      color: Colors.black,
      height: 1.3,
      fontWeight: FontWeight.w500,
    ),
    headline6: const TextStyle(
      color: Colors.black,
      height: 1.3,
      fontWeight: FontWeight.w500,
    ),
    subtitle1: const TextStyle(
      color: Colors.black,
      height: 1.3,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
    ),
    subtitle2: const TextStyle(
      color: ColorUtils.lightGreyColor,
      height: 1.3,
      fontSize: 13.0,
      fontWeight: FontWeight.w500,
    ),
    caption: TextStyle(
      height: 1.3,
      color: Colors.black.withOpacity(0.45),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
    ),
    bodyText2: const TextStyle(
      height: 1.3,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
    ),
    button: const TextStyle(color: Colors.black, height: 1.3),
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(primary: ColorUtils.primaryColor),
  ),
  tabBarTheme: TabBarTheme(
    unselectedLabelStyle: TextStyle(
      color: Colors.black.withOpacity(0.45),
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelColor: Colors.black.withOpacity(0.45),
    labelColor: ColorUtils.primaryColor,
    labelStyle: const TextStyle(
      color: ColorUtils.primaryColor,
      fontWeight: FontWeight.w600,
    ),
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: ColorUtils.primaryColor, width: 2.0),
      insets: EdgeInsets.fromLTRB(0, 0.0, 0.0, 45.0),
    ),
  ),
);

final ThemeData lightTheme = ThemeData();

final ThemeData darkTheme = ThemeData();
