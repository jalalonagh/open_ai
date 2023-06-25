import 'package:flutter/material.dart';
import 'package:jo_body/jo_body.dart';
import 'package:jo_bottom_navigation/jo_bottom_navigation.dart';
import 'package:jo_bottom_navigation/jo_navigation_item.dart';
import 'package:lanternet_open_ai/new_version/home/jo_page_home.dart';

import '../../main.dart';

class JOPageDetail extends StatefulWidget {
  JOPageDetail({
    Key? key,
  }) : super(key: key);
  static String routeName = "/jo_page_detail";

  @override
  State<JOPageDetail> createState() => _JOPageDetailState();
}

class _JOPageDetailState extends State<JOPageDetail> {
  bool inProgress = false;
  bool keep = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return JOBody(
      rtl: true,
      onPopPushReplacement: JOPageHome.routeName,
      margin: EdgeInsets.only(top: 10.0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
      ),
      inProgress: inProgress,
      actions: [],
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
