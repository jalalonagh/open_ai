import 'package:flutter/material.dart';
import 'package:jo_body/jo_body.dart';

import '../../bases/Controller/Service/UserServiceV2.dart';
import '../../components/generals/app/form/jo_justify_normal_text.dart';

class JOPageRules extends StatefulWidget {
  const JOPageRules({Key? key}) : super(key: key);
  static String routeName = "/jo_page_rules";

  @override
  State<JOPageRules> createState() => _JOPageRulesState();
}

class _JOPageRulesState extends State<JOPageRules> {
  bool inProgress = false;
  bool keep = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return JOBody(
      rtl: true,
      authorized: false,
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            JOJustifyNormalText(
              text: "قوانین و حریم خصوصی",
            ),
            SizedBox(
              height: 20.0,
            ),
            JOJustifyNormalText(
              text:
                  "دوستان عزیز خواهشمند است که به موارد ذکر شده در زیر توجه فرمائید",
            ),
            JOJustifyNormalText(
              text:
                  "استفاده از این اپلیکیشن کاملا رایگان بوده و برای عموم آزاد است .",
            ),
            JOJustifyNormalText(
              text:
                  "برای استفاده از امکانات این اپلیکیشن تنها کافی است که در اپلیکیشن با وارد کردن شماره موبایل خودتان عضو شوید و هیچ گونه دیتایی از کاربر دریافت نمی شود . شماره موبایل دریافتی تنها برای اعتبارسنجی ورود به اپلیکیشن بود و هیچ کاربرد و ارزش دیگیری ندارد .",
            ),
            JOJustifyNormalText(
              text:
                  "این اپلیکیشن از نسخه معتبر سرویس چت جی پی تی استفاده می کند و تمامی پرسش ها و پاسخ های دریافتی از سمت اپلیکیشن نبوده و این اپلیکیشن حکم یک منتقل کننده پیام را دارد.",
            ),
            JOJustifyNormalText(
              text:
                  "تمامی حقوق این اپلیکیشن متعلق به توسعه دهنده آن می باشد و هر گونه استفاده سوء از اپلیکیشن مسئولیت آن با خود شخص می باشد و در صورت لزوم از سمت توسعه دهنده پیگیری های قانونی انجام خواهد گرفت .",
            ),
            JOJustifyNormalText(
              text:
                  "ما اطمینان می دهیم که اطلاعات دریافتی از جانب کاربران محفوظ خواهد بود.",
            ),
          ],
        ),
      ),
      inProgress: inProgress,
    );
  }
}
