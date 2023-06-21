// import 'package:flutter/material.dart';
// import 'package:lanternet_open_ai/bases/Controller/Service/UserServiceV2.dart';
// import 'package:lanternet_open_ai/bases/Utilities/messages.dart';
// import 'package:lanternet_open_ai/routes.dart';
// import '../../../../bases/Utilities/Base.dart';

// class JOSmallButton extends StatefulWidget {
//   const JOSmallButton({
//     Key? key,
//     required this.onClick,
//     this.route,
//     required this.icon,
//     this.title,
//     required this.visible,
//     required this.enabled,
//   }) : super(key: key);
//   final Function() onClick;
//   final String? route;
//   final IconData icon;
//   final String? title;
//   final bool visible;
//   final bool enabled;
//   @override
//   State<JOSmallButton> createState() => _JOSmallButtonState();
// }

// class _JOSmallButtonState extends State<JOSmallButton> {
//   bool inProgress = false;
//   @override
//   Widget build(BuildContext context) {
//     return widget.visible
//         ? InkWell(
//             child: Container(
//               width: 100.0,
//               margin: EdgeInsets.symmetric(
//                 horizontal: 10.0,
//               ),
//               padding: EdgeInsets.symmetric(horizontal: 10.0),
//               decoration: BoxDecoration(
//                 color: widget.enabled
//                     ? CBase().basePrimaryColor
//                     : CBase().pureWhite,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: widget.enabled
//                   ? Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         inProgress
//                             ? CircularProgressIndicator(
//                                 color: CBase().pureWhite,
//                               )
//                             : Icon(
//                                 widget.icon,
//                                 size: 25.0,
//                                 color: CBase().baseYellowColor,
//                               ),
//                         widget.title != null
//                             ? SizedBox(
//                                 width: 10.0,
//                               )
//                             : SizedBox(),
//                         widget.title != null
//                             ? Text(
//                                 widget.title ?? Messages.noTitle,
//                                 style: TextStyle(
//                                   color: CBase().pureWhite,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               )
//                             : SizedBox(),
//                       ],
//                     )
//                   : Row(
//                       children: [
//                         Icon(
//                           Icons.disabled_visible,
//                           size: 25.0,
//                           color: CBase().baseGrey,
//                         ),
//                         Text(
//                           Messages.disibledText,
//                           style: TextStyle(
//                             color: CBase().baseGrey,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//             ),
//             onTap: UserServiceV2().getOperation()
//                 ? null
//                 : () async {
//                     if (widget.route != null && widget.route!.isNotEmpty) {
//                       Navigator.pushNamed(
//                         context,
//                         widget.route ?? "",
//                       );
//                       routes.entries
//                           .where((rt) => rt.key == "dssd")
//                           .forEach((r) {
//                         var eeee = r.value;
//                       });
//                     }
//                     widget.onClick.call();
//                   },
//           )
//         : Container();
//   }
// }
