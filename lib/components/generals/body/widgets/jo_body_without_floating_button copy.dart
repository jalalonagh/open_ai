// import 'package:flutter/material.dart';
// import 'package:jo_buttons/jo_buttons.dart';

// class JOBodyWithoutFloatingButton extends StatelessWidget {
//   const JOBodyWithoutFloatingButton({
//     Key? key,
//     required this.rtl,
//     required this.body,
//     this.actions,
//   }) : super(key: key);
//   final bool rtl;
//   final Widget body;
//   final List<JOSmallButton>? actions;

//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: rtl ? TextDirection.rtl : TextDirection.ltr,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Flexible(
//             flex: 6,
//             child: SingleChildScrollView(
//               child: body,
//             ),
//           ),
//           actions != null
//               ? Container(
//                   width: MediaQuery.of(context).size.width,
//                   margin: EdgeInsets.all(10.0),
//                   height: 60.0,
//                   child: ListView(
//                     children: actions!.toList(),
//                     scrollDirection: Axis.horizontal,
//                   ),
//                 )
//               : SizedBox(),
//         ],
//       ),
//     );
//   }
// }
