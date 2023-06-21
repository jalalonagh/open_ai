import 'package:flutter/material.dart';

class JOJustifyNormalText extends StatelessWidget {
  const JOJustifyNormalText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
  }
}
