import 'package:flutter/material.dart';
import 'package:jo_body/jo_body.dart';
import 'package:lanternet_open_ai/bases/Utilities/messages.dart';
import 'package:lanternet_open_ai/new_version/home/jo_page_home.dart';
import 'package:lanternet_open_ai/new_version/sign/components/jo_form_otp.dart';
import 'package:lanternet_open_ai/new_version/sign/components/jo_form_sign.dart';
import 'package:jo_buttons/jo_buttons.dart';
import '../../bases/Controller/Service/UserServiceV2.dart';
import '../../components/generals/app/page/jo_page_header_large.dart';
import '../rules/jo_page_rules.dart';

class JOPageSignIn extends StatefulWidget {
  const JOPageSignIn({Key? key}) : super(key: key);
  static String routeName = "/jo_page_signin";
  @override
  State<JOPageSignIn> createState() => _JOPageSignInState();
}

class _JOPageSignInState extends State<JOPageSignIn> {
  bool inProgress = false;
  bool otpPanel = false;
  String phone = "";
  String otpCode = "";

  @override
  Widget build(BuildContext context) {
    return JOBody(
      rtl: true,
      authorized: false,
      body: Column(
        children: [
          JOPageHeaderLarge(
            image: 'assets/images/logoxl.png',
            title: Messages.wellcome,
          ),
          SizedBox(
            height: 50.0,
          ),
          !otpPanel
              ? JOFormSign(
                  callback: (p0) {
                    phone = p0;
                  },
                )
              : JOFormOTP(
                  callback: (p0) {
                    otpCode = p0;
                  },
                  phone: phone),
          Container(
            margin: EdgeInsets.all(10.0),
            child: InkWell(
              child: Text("مطالعه قوانین و حریم خصوصی"),
              onTap: () {
                Navigator.of(context).pushNamed(JOPageRules.routeName);
              },
            ),
          ),
        ],
      ),
      inProgress: inProgress,
      actions: [
        JOSmallButton(
          icon: Icons.check_circle_rounded,
          onClick: () async {
            setState(() {
              inProgress = true;
              UserServiceV2().setOperation(true);
            });
            try {
              var res =
                  await UserServiceV2().getTokenValidation(phone, otpCode);
              if (res.isSuccess) {
                UserServiceV2().setJWT(res.data);
                Navigator.pushNamed(context, JOPageHome.routeName);
              }
            } catch (e) {}
            setState(() {
              inProgress = false;
              UserServiceV2().setOperation(false);
            });
          },
          title: Messages.signFormBTNOTP,
          visible: otpPanel,
          enabled: true,
        ),
        JOSmallButton(
          icon: Icons.login_rounded,
          onClick: () async {
            setState(() {
              inProgress = true;
              UserServiceV2().setOperation(true);
            });
            try {
              var res = await UserServiceV2().getValidation(phone);
              if (res.isSuccess) {
                otpPanel = true;
              }
            } catch (e) {}
            setState(() {
              inProgress = false;
              UserServiceV2().setOperation(false);
            });
          },
          title: Messages.signFormBTNLogin,
          visible: !otpPanel,
          enabled: true,
        ),
      ],
    );
  }
}
