import 'package:flutter/material.dart';

const kAnimationDuration = Duration(milliseconds: 200);

const defaultDuration = Duration(milliseconds: 250);

const String complateProfileDetail =
    "جزئیات پروفایل رو تکمیل کنید یا ادامه بدین \nبا سوشال مدیا";
const String roleConfirm = "با تائید کردن قوانین \nبا قبول آنها موافقت کنید";
const String forgotPasswordMessage =
    "ایمیل خود را برای دریافت رمز جدید وارد کنید. دقت کنید که ممکن است ایمیل ارسالی وارد بخش spam شود .";
const String loginSuccessText = "با موفقیت وارد شدید";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(),
  );
}
