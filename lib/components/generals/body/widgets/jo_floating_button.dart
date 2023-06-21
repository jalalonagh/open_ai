// import 'package:flutter/material.dart';
// import 'package:lanternet_open_ai/bases/Api/ResponseModel.dart';
// import 'package:lanternet_open_ai/bases/Controller/Service/UserServiceV2.dart';
// import 'package:lanternet_open_ai/bases/Utilities/Base.dart';

// class JOFloatingButton extends StatefulWidget {
//   const JOFloatingButton({
//     Key? key,
//     required this.icon,
//     required this.actionCallback,
//     required this.visible,
//     required this.action,
//   }) : super(key: key);
//   final Icon icon;
//   final Function(ResponseModel) actionCallback;
//   final Future<ResponseModel> action;

//   final bool visible;
//   @override
//   State<JOFloatingButton> createState() => _JOFloatingButtonState();
// }

// class _JOFloatingButtonState extends State<JOFloatingButton> {
//   bool inProgress = false;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       child: CircleAvatar(
//         child: inProgress
//             ? CircularProgressIndicator(
//                 color: CBase().pureWhite,
//               )
//             : widget.icon,
//       ),
//       onTap: UserServiceV2.inOperation == true
//           ? null
//           : () async {
//               ResponseModel res = ResponseModel(
//                 isSuccess: false,
//                 data: null,
//                 message: "خطا رخ داده است",
//               );
//               setState(() {
//                 inProgress = true;
//                 UserServiceV2().setOperation(true);
//               });
//               try {
//                 res = await widget.action;
//               } catch (e) {}
//               setState(() {
//                 inProgress = false;
//                 UserServiceV2().setOperation(false);
//               });
//               widget.actionCallback.call(res);
//             },
//     );
//   }
// }
