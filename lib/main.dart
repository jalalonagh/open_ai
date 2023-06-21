import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jo_cafebazaar_widgets/jo_cafebazaar_widgets.dart';
import 'package:lanternet_open_ai/routes.dart';
import 'package:lanternet_open_ai/theme.dart';
import 'package:tapsell_plus/tapsell_plus.dart';
import 'constans/config.dart';
import 'new_version/home/jo_page_home.dart';

CafeBazaar cafe = CafeBazaar(
    developerId: CafeBazaarConfig.developerId,
    packageName: CafeBazaarConfig.packageName);

Myket myket = Myket(
    developerId: MyketConfig.developerId, packageName: MyketConfig.packageName);

Random adsRandom = Random();
const appId =
    "jdkjfiejlnfccjtgsmrscpqttlkghmdadgfiomciiriqadbrhmqjndbnorqinsnirfjajn"; // Get the key from tapsell-dashboard
void main() {
  runApp(MyApp());
  TapsellPlus.instance.initialize(appId);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: JOPageHome.routeName,
      routes: routes,
    );
  }
}
