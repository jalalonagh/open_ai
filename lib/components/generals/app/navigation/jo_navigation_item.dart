import 'package:flutter/material.dart';
import 'package:lanternet_open_ai/components/generals/app/navigation/jo_navigation.dart';

class JONavigationItem extends StatelessWidget {
  const JONavigationItem({
    Key? key,
    required this.icon,
    required this.route,
    required this.callback,
  }) : super(key: key);
  final IconData icon;
  final String route;
  final Function() callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: EdgeInsets.all(10.0),
      child: IconButton(
        padding: EdgeInsets.all(0.0),
        icon: Icon(icon),
        isSelected: joNavigationCurrentRoute == route,
        iconSize: 30.0,
        onPressed: () {
          joNavigationCurrentRoute = route;
          callback.call();
          //Navigator.of(context).pushNamed(route);
        },
      ),
    );
  }
}
