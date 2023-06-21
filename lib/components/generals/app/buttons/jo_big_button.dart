// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:lanternet_open_ai/bases/Api/ResponseModel.dart';
// import 'package:lanternet_open_ai/bases/Controller/Service/UserServiceV2.dart';
// import 'package:lanternet_open_ai/routes.dart';
// import '../../../../bases/Utilities/Base.dart';
// import '../../../../constans/font_dark_styles.dart';

// class JOBigButton extends StatefulWidget {
//   const JOBigButton({
//     Key? key,
//     this.callback,
//     this.action,
//     this.route,
//     required this.title,
//     required this.description,
//     required this.iconRight,
//     this.iconLeft,
//   }) : super(key: key);
//   final Function(ResponseModel?)? callback;
//   final Future<ResponseModel>? action;
//   final String? route;
//   final String title;
//   final String description;
//   final IconData iconRight;
//   final IconData? iconLeft;
//   @override
//   State<JOBigButton> createState() => _JOBigButtonState();
// }

// class _JOBigButtonState extends State<JOBigButton> {
//   bool inProgress = false;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       child: Container(
//         width: double.infinity,
//         margin: EdgeInsets.all(20.0),
//         padding: EdgeInsets.symmetric(
//           horizontal: 20.0,
//           vertical: 15.0,
//         ),
//         decoration: BoxDecoration(
//           color: CBase().basePrimaryColor,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Icon(
//               widget.iconRight,
//               size: 50.0,
//               color: CBase().baseYellowColor,
//             ),
//             Flexible(
//               flex: 2,
//               child: Text.rich(
//                 TextSpan(
//                   style: TextStyle(color: CBase().backgroundColor),
//                   children: [
//                     TextSpan(text: "${widget.title}\n"),
//                     TextSpan(
//                       text: widget.description,
//                       style: FontLightStyle().subtitleStyle,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             inProgress
//                 ? CircularProgressIndicator(
//                     color: CBase().pureWhite,
//                   )
//                 : Icon(
//                     widget.iconLeft ?? Icons.ads_click_rounded,
//                     size: 25.0,
//                     color: CBase().backgroundColor,
//                   ),
//           ],
//         ),
//       ),
//       onTap: () async {
//         setState(() {
//           inProgress = true;
//           UserServiceV2().setOperation(true);
//         });
//         try {
//           if (widget.action != null) {
//             var res = await widget.action;
//             widget.callback?.call(res);
//           }
//         } catch (e) {}
//         setState(() {
//           inProgress = false;
//           UserServiceV2().setOperation(false);
//         });
//         if (widget.route != null && widget.route!.isNotEmpty) {
//           Navigator.pushNamed(
//             context,
//             widget.route ?? "",
//           );
//         }
//       },
//     );
//   }
// }
