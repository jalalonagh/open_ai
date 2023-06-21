import 'package:flutter/widgets.dart';
import 'package:lanternet_open_ai/new_version/home/jo_page_home.dart';
import 'new_version/chat/jo_page_chat.dart';
import 'new_version/detail/jo_page_detail.dart';
import 'new_version/image/jo_page_image.dart';
import 'new_version/rules/jo_page_rules.dart';
import 'new_version/sign/jo_page_signin.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  JOPageHome.routeName: (context) => JOPageHome(),
  JOPageSignIn.routeName: (context) => JOPageSignIn(),
  JOPageDetail.routeName: (context) => JOPageDetail(),
  JOPageChat.routeName: (context) => JOPageChat(),
  JOPageImage.routeName: (context) => JOPageImage(),
  JOPageRules.routeName: (context) => JOPageRules(),
};
