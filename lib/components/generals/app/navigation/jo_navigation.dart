import 'package:flutter/material.dart';
import 'package:lanternet_open_ai/components/generals/app/navigation/jo_navigation_item.dart';

String? joNavigationCurrentRoute;

class JONavigation extends StatefulWidget {
  const JONavigation({
    Key? key,
    this.rtl = true,
  }) : super(key: key);
  final bool rtl;

  @override
  State<JONavigation> createState() => _JONavigationState();
}

class _JONavigationState extends State<JONavigation> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: widget.rtl ? TextDirection.rtl : TextDirection.ltr,
      child: Container(
        height: 70.0,
        child: ListView(
          padding: EdgeInsets.all(0.0),
          scrollDirection: Axis.horizontal,
          children: [
            JONavigationItem(
              icon: Icons.home_outlined,
              route: "route1",
              callback: () {
                setState(() {});
              },
            ),
            JONavigationItem(
              icon: Icons.star_outline,
              route: "route2",
              callback: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
