import 'package:flutter/material.dart';
import 'package:lanternet_open_ai/bases/Utilities/messages.dart';
import '../../../components/generals/app/form/jo_text_field.dart';

class JOFormOTP extends StatefulWidget {
  const JOFormOTP({
    Key? key,
    required this.callback,
    required this.phone,
  }) : super(key: key);
  final Function(String) callback;
  final String phone;

  @override
  State<JOFormOTP> createState() => _JOFormOTPState();
}

class _JOFormOTPState extends State<JOFormOTP> {
  String otpCode = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          JOTextField(
            hint: Messages.otpNumberExam,
            onChange: (v) {
              otpCode = v;
              widget.callback.call(v);
            },
            type: TextInputType.number,
            value: otpCode,
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
