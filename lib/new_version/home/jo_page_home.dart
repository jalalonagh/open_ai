import 'package:flutter/material.dart';
import 'package:jo_body/jo_body.dart';
import 'package:jo_buttons/jo_buttons.dart';
import '../../bases/Controller/Service/UserServiceV2.dart';
import '../../components/generals/app/navigation/jo_navigation.dart';
import '../../constans/config.dart';
import '../../main.dart';
import '../chat/jo_page_chat.dart';
import '../image/jo_page_image.dart';
import 'package:jo_cafebazaar_widgets/jo_cafebazaar_widgets.dart';

class JOPageHome extends StatefulWidget {
  const JOPageHome({Key? key}) : super(key: key);
  static String routeName = "/jo_page_home";

  @override
  State<JOPageHome> createState() => _JOPageHomeState();
}

class _JOPageHomeState extends State<JOPageHome> {
  bool inProgress = false;
  bool keep = true;

  @override
  void initState() {
    super.initState();
    UserServiceV2().authorization(context);
  }

  @override
  Widget build(BuildContext context) {
    return JOBody(
      rtl: true,
      displayAds: true,
      body: Column(
        children: [
          SizedBox(height: 10.0),
          JOBigButton(
            route: JOPageChat.routeName,
            description: "با هوش مصنوعی چت کن و سوالات رو بپرس",
            iconRight: Icons.science_rounded,
            title: "Open Ai",
            callback: () {
              Navigator.of(context).pushNamed(JOPageChat.routeName);
            },
          ),
          SizedBox(height: 10.0),
          JOBigButton(
            route: JOPageImage.routeName,
            description: "بزار هوش مصنوعی برات تصویر های زیبا بسازه",
            iconRight: Icons.data_usage_rounded,
            title: "Open Ai",
            callback: () {
              Navigator.of(context).pushNamed(JOPageImage.routeName);
            },
          ),
          SizedBox(height: 50.0),
          Container(
            margin: EdgeInsets.all(10.0),
            child: InkWell(
              child: Text("به ما با امتیاز دادن کمک کنید ."),
              onTap: () {
                myket.makeCommentToApp();
                cafe.makeCommentToApp();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: InkWell(
              child: Text("از سایر محصولات ما دیدن بفرمائید."),
              onTap: () {
                myket.getMyOtherApps();
                cafe.getMyOtherApps();
              },
            ),
          ),
        ],
      ),
      inProgress: inProgress,
      bottomNavigation: JONavigation(),
    );
  }
}
