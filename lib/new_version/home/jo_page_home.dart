import 'package:flutter/material.dart';
import 'package:jo_body/jo_body.dart';
import 'package:jo_bottom_navigation/jo_navigation_item.dart';
import 'package:jo_buttons/jo_buttons.dart';
import 'package:lanternet_open_ai/main.dart';
import '../../bases/Controller/Service/UserServiceV2.dart';
import '../chat/jo_page_chat.dart';
import '../image/jo_page_image.dart';
import 'package:jo_bottom_navigation/jo_bottom_navigation.dart';

class JOPageHome extends StatefulWidget {
  const JOPageHome({Key? key}) : super(key: key);
  static String routeName = "/jo_page_home";

  @override
  State<JOPageHome> createState() => _JOPageHomeState();
}

class _JOPageHomeState extends State<JOPageHome> {
  bool inProgress = false;
  bool keep = true;

  @override
  void initState() {
    super.initState();
    UserServiceV2().authorization(context);
  }

  @override
  Widget build(BuildContext context) {
    return JOBody(
      rtl: true,
      displayAds: true,
      body: Column(
        children: [
          SizedBox(height: 10.0),
          JOBigButton(
            route: JOPageChat.routeName,
            description: "با هوش مصنوعی چت کن و سوالات رو بپرس",
            iconRight: Icons.science_rounded,
            title: "Open Ai",
            callback: () {
              Navigator.of(context).pushNamed(JOPageChat.routeName);
            },
          ),
          SizedBox(height: 10.0),
          JOBigButton(
            route: JOPageImage.routeName,
            description: "بزار هوش مصنوعی برات تصویر های زیبا بسازه",
            iconRight: Icons.data_usage_rounded,
            title: "Open Ai",
            callback: () {
              Navigator.of(context).pushNamed(JOPageImage.routeName);
            },
          ),
          SizedBox(height: 50.0),
        ],
      ),
      inProgress: inProgress,
      bottomNavigation: JOBottomNavigation(
        items: [
          JOBottomNavigationItem(
            icon: Icons.home_outlined,
            route: "/jo_page_home",
            callback: () {
              setState(() {});
            },
            visible: true,
            enable: true,
          ),
          JOBottomNavigationItem(
            icon: Icons.star_rounded,
            callback: () {
              platform.makeCommentToApp();
              setState(() {});
            },
            visible: true,
            enable: true,
          ),
          JOBottomNavigationItem(
            icon: Icons.apps_rounded,
            callback: () {
              platform.getMyOtherApps();
              setState(() {});
            },
            visible: true,
            enable: true,
          ),
        ],
      ),
    );
  }
}
