import 'package:flutter/material.dart';
import '../../../../constans/font_dark_styles.dart';

class JOFutureBuilder extends StatefulWidget {
  const JOFutureBuilder({
    Key? key,
    this.items,
    this.title,
    this.height,
  }) : super(key: key);
  final List<Widget>? items;
  final String? title;
  final double? height;

  @override
  State<JOFutureBuilder> createState() => _JOFutureBuilderState();
}

class _JOFutureBuilderState extends State<JOFutureBuilder> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.items != null && widget.items!.length > 0
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.title != null
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        widget.title!,
                        style: FontLightStyle().subtitleStyle,
                      ),
                    )
                  : SizedBox(),
              SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height:
                      widget.height ?? MediaQuery.of(context).size.height * 0.6,
                  child: ListView(
                    children: widget.items!.toList(),
                  ),
                ),
              ),
            ],
          )
        : SizedBox();
  }
}
