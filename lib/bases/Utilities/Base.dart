import 'package:flutter/material.dart';

// class CBase {
//   Color baseYellowColor = Color(0xffffd400);
//   Color baseBlackColor = Color(0xff262626);
//   Color baseGrey = Color(0xff464646);
//   Color basePrimaryColor = Color(0xff032D5D);
//   Color basePrimaryLightColor = Color(0xff00bbf2);
//   Color borderPrimaryColor = Color(0xffcbcbcb);
//   Color pureBlack = Color(0xff000000);
//   Color pureWhite = Color(0xffffffff);
//   Color iconColor = Color.fromARGB(255, 228, 228, 228);
//   Color lightTitleColor = Color(0xff8D8D8D);
//   Color textYellowColor = Color.fromARGB(255, 255, 128, 25);
//   Color textPrimaryColor = Color.fromARGB(255, 32, 32, 32);
//   Color textLightPrimaryColor = Color(0xffF9F9F9);
//   Color backgroundColor = Color(0xfff4f4f4);
//   Color linkColor = Colors.blueAccent;
//   Color successColor = Colors.greenAccent;
//   Color headerTextColor = Color(0xff032D5D);
//   Color secondaryHeaderColor = Color(0xff00bbf2);
//   Color textColor = Color(0xff262626);
//   Color errorColor = Colors.redAccent;
//   String fontFamily = "iransans";

//   BoxDecoration boxDecoration = BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.all(
//       Radius.circular(10.0),
//     ),
//   );

//   BoxDecoration titleBoxDecoration = BoxDecoration(
//     border: Border(
//       top: BorderSide(
//         width: 0.5,
//         color: Color(0xffcbcbcb),
//       ),
//     ),
//   );

//   double getFullWidth(BuildContext context) {
//     return MediaQuery.of(context).size.width;
//   }

//   double getFullHeight(BuildContext context) {
//     return MediaQuery.of(context).size.height;
//   }

//   String getCleanedTitleText(String text, int length) {
//     try {
//       var words = text.split(" ").toList();

//       if (words.length <= 1) words = text.split("_");

//       String result = "";

//       for (int i = 0; i < words.length; i++) {
//         result += " " + words[i];

//         if (i + 1 < words.length &&
//             result.length + words[i + 1].length > length) {
//           result += " ...";
//           break;
//         }
//       }

//       return result;
//     } catch (e) {}
//     return "";
//   }
// }
