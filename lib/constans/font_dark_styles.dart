import 'package:flutter/material.dart';

class FontLightStyle {
  static String fontFamily = "iransans";

  TextStyle headingStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    height: 1.5,
  );

  TextStyle titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    fontFamily: fontFamily,
    height: 1.5,
  );

  TextStyle titleLightStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    fontFamily: fontFamily,
    height: 1.5,
  );

  TextStyle subtitleStyle = TextStyle(
    fontSize: 18,
    fontFamily: fontFamily,
  );

  TextStyle textStyle = TextStyle(
    fontSize: 14,
    fontFamily: fontFamily,
  );

  TextStyle warningTextStyle = TextStyle(
    fontSize: 14,
    fontFamily: fontFamily,
  );

  TextStyle smallTextStyle = TextStyle(
    fontSize: 12,
    fontFamily: fontFamily,
  );

  TextStyle buttonTextStyle = TextStyle(
    fontSize: 14,
    fontFamily: fontFamily,
  );
}
