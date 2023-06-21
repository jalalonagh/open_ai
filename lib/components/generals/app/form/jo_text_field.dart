import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../bases/Utilities/Base.dart';

class JOTextField extends StatefulWidget {
  const JOTextField({
    Key? key,
    required this.value,
    this.persian = true,
    required this.type,
    this.align = TextAlign.right,
    required this.onChange,
    required this.hint,
    this.fontSize = 14.0,
    this.margin,
    this.rtl = true,
  }) : super(key: key);
  final String value;
  final bool persian;
  final TextInputType type;
  final TextAlign align;
  final Function(String) onChange;
  final String hint;
  final double? fontSize;
  final EdgeInsetsGeometry? margin;
  final bool rtl;

  @override
  State<JOTextField> createState() => _JOTextFieldState();
}

class _JOTextFieldState extends State<JOTextField> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: widget.rtl ? TextDirection.rtl : TextDirection.ltr,
      child: Container(
        margin: widget.margin ??
            const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: TextField(
          controller: TextEditingController(
              text: widget.persian
                  ? widget.value.toPersianDigit()
                  : widget.value),
          keyboardType: widget.type,
          textAlign: TextAlign.center,
          autofocus: true,
          style: TextStyle(
            fontSize: widget.fontSize,
            fontWeight: FontWeight.bold,
          ),
          onChanged: (v) {
            widget.onChange.call(widget.persian ? v.toEnglishDigit() : v);
          },
          onSubmitted: (v) {
            widget.onChange.call(widget.persian ? v.toEnglishDigit() : v);
          },
          decoration: InputDecoration(
            hintText:
                widget.persian ? widget.hint.toPersianDigit() : widget.hint,
            hintStyle: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
