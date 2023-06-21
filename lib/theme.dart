import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:lanternet_open_ai/constans/font_dark_styles.dart';

ThemeData theme() {
  return ThemeData(
    brightness:
        SchedulerBinding.instance.window.platformBrightness == Brightness.dark
            ? Brightness.dark
            : Brightness.light,
    fontFamily: "iransans",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: ButtonThemeData(),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2.0,
        padding: EdgeInsets.only(
          top: 10.0,
          left: 45.0,
          right: 45.0,
          bottom: 10.0,
        ),
        textStyle: TextStyle(
          fontFamily: "iransans",
        ),
      ),
    ),
    // colorScheme: ColorScheme(
    //   error: CBase().errorColor,
    //   background: Colors.black,
    //   brightness: Brightness.light,
    //   onBackground: null,
    //   onError: null,
    //   onPrimary: null,
    //   onSecondary: null,
    //   onSurface: null,
    //   primary: null,
    //   secondary: null,
    //   surface: null,
    // ).copyWith(secondary: CBase().basePrimaryLightColor),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(35.0),
    borderSide: BorderSide(),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    filled: true,
  );
}

TextTheme textTheme() {
  return TextTheme(
    displaySmall: FontLightStyle().textStyle,
    headlineMedium: FontLightStyle().textStyle,
    headlineSmall: FontLightStyle().textStyle,
    titleLarge: FontLightStyle().textStyle,
    displayLarge: FontLightStyle().headingStyle,
    displayMedium: FontLightStyle().titleStyle,
    bodyLarge: FontLightStyle().textStyle,
    bodyMedium: FontLightStyle().textStyle,
    bodySmall: FontLightStyle().titleStyle,
    labelLarge: FontLightStyle().buttonTextStyle,
    titleMedium: FontLightStyle().textStyle,
    titleSmall: FontLightStyle().smallTextStyle,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    iconTheme: IconThemeData(),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    toolbarTextStyle: TextTheme(
      titleLarge: FontLightStyle().textStyle,
    ).bodyMedium,
    titleTextStyle: TextTheme(
      titleLarge: FontLightStyle().textStyle,
    ).titleLarge,
  );
}
