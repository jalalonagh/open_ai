// import 'dart:math';

// import 'package:flutter/material.dart';

// import '../../../../bases/Utilities/Base.dart';

// class JOCircleNameIconButton extends StatelessWidget {
//   const JOCircleNameIconButton({
//     Key? key,
//     required this.text,
//     this.data,
//     required this.onClick,
//     this.color,
//     this.iconOnly = false,
//     this.largeText = false,
//   }) : super(key: key);
//   final String text;
//   final dynamic data;
//   final Function(dynamic) onClick;
//   final Color? color;
//   final bool iconOnly;
//   final bool largeText;
//   @override
//   Widget build(BuildContext context) {
//     var fc = text[0];
//     var sc = text.split(" ").length > 1 ? text.split(" ").last[0] : "";
//     return InkWell(
//       child: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(5.0),
//             height: 65.0,
//             width: 65.0,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(35.0),
//               color: color ??
//                   Colors.primaries[Random().nextInt(Colors.primaries.length)],
//             ),
//             child: Center(
//               child: Text(
//                 fc + sc,
//                 style: TextStyle(
//                   color: CBase().pureWhite,
//                   fontSize: largeText ? 24.0 : 16.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           iconOnly
//               ? SizedBox()
//               : Center(
//                   child: Text(
//                     text,
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: largeText ? 16.0 : 14.0,
//                     ),
//                   ),
//                 )
//         ],
//       ),
//       onTap: () {
//         onClick.call(data);
//       },
//     );
//   }
// }
