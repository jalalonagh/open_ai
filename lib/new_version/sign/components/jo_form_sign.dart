import 'package:flutter/material.dart';
import 'package:lanternet_open_ai/bases/Utilities/messages.dart';

import '../../../components/generals/app/form/jo_text_field.dart';

class JOFormSign extends StatefulWidget {
  const JOFormSign({
    Key? key,
    required this.callback,
  }) : super(key: key);
  final Function(String) callback;

  @override
  State<JOFormSign> createState() => _JOFormSignState();
}

class _JOFormSignState extends State<JOFormSign> {
  String phone = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          JOTextField(
            hint: Messages.mobileNumberExam,
            onChange: (v) {
              phone = v;
              widget.callback.call(v);
            },
            type: TextInputType.phone,
            value: phone,
            persian: true,
            align: TextAlign.center,
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            fontSize: 24.0,
          ),
        ],
      ),
    );
  }
}
