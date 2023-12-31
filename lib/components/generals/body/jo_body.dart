// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:lanternet_open_ai/bases/Utilities/Base.dart';
// import 'package:lanternet_open_ai/bases/Utilities/messages.dart';
// import 'package:lanternet_open_ai/components/generals/app/buttons/jo_small_button.dart';
// import 'package:swipe_refresh/swipe_refresh.dart';
// import '../../../bases/Controller/Service/UserServiceV2.dart';
// import '../../../new_version/sign/jo_page_signin.dart';
// import '../jo_loading.dart';
// import 'widgets/jo_body_without_floating_button copy.dart';
// import 'widgets/jo_floating_button.dart';
// import 'package:jo_loading/jo_loading.dart';

// class JOBody extends StatefulWidget {
//   const JOBody({
//     Key? key,
//     required this.rtl,
//     required this.body,
//     this.actions,
//     this.title,
//     required this.inProgress,
//     this.padding,
//     this.margin,
//     this.displayAds = false,
//     this.authorized = true,
//     this.onPopPushReplacement,
//   }) : super(key: key);
//   final bool rtl;
//   final Widget body;
//   final List<JOSmallButton>? actions;
//   final String? title;
//   final bool inProgress;
//   final EdgeInsetsGeometry? padding;
//   final EdgeInsetsGeometry? margin;
//   final bool displayAds;
//   final bool authorized;
//   final String? onPopPushReplacement;

//   @override
//   State<JOBody> createState() => _JOBodyState();
// }

// class _JOBodyState extends State<JOBody> with WidgetsBindingObserver {
//   List<JOFloatingButton>? activeActions;
//   bool inProgress = false;

//   final controller = StreamController<SwipeRefreshState>.broadcast();
//   Stream<SwipeRefreshState> get stream => controller.stream;

//   @override
//   void initState() {
//     super.initState();

//     inProgress = widget.inProgress;

//     if (widget.authorized) {
//       UserServiceV2().getJWT().then((jwt) {
//         UserServiceV2().profile().then((p) {
//           if (!p.isSuccess) {
//             Navigator.of(context).pushNamed(JOPageSignIn.routeName);
//           }
//         });
//       });
//     }
//     WidgetsBinding.instance.addObserver(this);
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     if (state == AppLifecycleState.resumed) {
//       // user returned to our app
//     } else if (state == AppLifecycleState.inactive) {
//       // app is inactive
//     } else if (state == AppLifecycleState.paused) {
//       // user is about quit our app temporally
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         return await goBack(widget.title ?? "");
//       },
//       child: Scaffold(
//         appBar: widget.title != null && widget.title!.isNotEmpty
//             ? AppBar(
//                 title: Text(
//                   widget.title ?? Messages.noTitle,
//                   style: TextStyle(
//                     color: CBase().basePrimaryColor,
//                   ),
//                 ),
//               )
//             : null,
//         body: SafeArea(
//           child: Container(
//             padding: widget.padding,
//             margin: widget.margin,
//             height: MediaQuery.of(context).size.height,
//             child: widget.inProgress
//                 ? JOLoading()
//                 : JOBodyWithoutFloatingButton(
//                     body: widget.body,
//                     rtl: widget.rtl,
//                     actions: widget.actions,
//                   ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<bool> goBack(String ttl) async {
//     if (widget.onPopPushReplacement != null) {
//       Navigator.of(context).pushNamed(widget.onPopPushReplacement ?? "");
//     } else {
//       Navigator.of(context).pop();
//     }
//     return true;
//   }
// }
