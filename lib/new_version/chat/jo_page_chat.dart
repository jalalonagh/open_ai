import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jo_body/jo_body.dart';
import 'package:jo_bottom_navigation/jo_bottom_navigation.dart';
import 'package:jo_bottom_navigation/jo_navigation_item.dart';
import 'package:lanternet_open_ai/bases/Model/chat_gpt/ChatGPTDTO.dart';
import 'package:lanternet_open_ai/bases/viewModels/chat_gpt/ChatGPTResult.dart';
import 'package:lanternet_open_ai/components/generals/app/form/jo_text_field.dart';
import 'package:lanternet_open_ai/new_version/home/jo_page_home.dart';
import 'package:jo_buttons/jo_buttons.dart';
import '../../bases/Controller/Service/UserServiceV2.dart';
import '../../bases/Controller/Service/chat_gpt_service.dart';
import '../../components/generals/app/page/detail/jo_page_detail_bank_description.dart';
import '../../main.dart';

class JOPageChat extends StatefulWidget {
  JOPageChat({
    Key? key,
  }) : super(key: key);
  static String routeName = "/jo_page_chat";

  @override
  State<JOPageChat> createState() => _JOPageChatState();
}

class _JOPageChatState extends State<JOPageChat> {
  bool inProgress = false;
  bool keep = false;
  ChatGPTResult response = ChatGPTResult();
  String text = "";
  @override
  void initState() {
    super.initState();

    UserServiceV2().authorization(context);
  }

  @override
  Widget build(BuildContext context) {
    return JOBody(
      rtl: true,
      onPopPushReplacement: JOPageHome.routeName,
      displayAds: true,
      margin: EdgeInsets.only(top: 10.0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            JOTextField(
              value: text,
              rtl: true,
              type: TextInputType.text,
              onChange: (p0) {
                text = p0;
              },
              hint: "متنت رو بنویس",
            ),
            (response.choices?.length ?? 0) > 0
                ? Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.55,
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(
                        top: 10.0,
                        left: 10.0,
                        right: 10.0,
                        bottom: 20.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListView(
                        children: response.choices!
                            .map(
                              (e) => Text(
                                e.message?.content ?? "",
                                textAlign: TextAlign.justify,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  )
                : Center(
                    child: Text("بدون محتوا"),
                  ),
          ],
        ),
      ),
      inProgress: inProgress,
      actions: [
        JOSmallButton(
          onClick: () async {
            setState(() {
              inProgress = true;
              UserServiceV2().setOperation(true);
            });
            ChatGPTDTO dto = ChatGPTDTO(model: "gpt-3.5-turbo");
            dto.messages = [];
            dto.messages!.add(
              Messages(
                content: text,
                role: "user",
              ),
            );
            response = await ChatGPTService().chatPost(dto);
            setState(() {
              inProgress = false;
              UserServiceV2().setOperation(false);
            });
          },
          title: "بپرس",
          icon: Icons.play_arrow_rounded,
          visible: true,
          enabled: true,
        ),
        JOSmallButton(
          onClick: () async {
            String joined = "";
            response.choices!.map((e) => e.message).toList().forEach((element) {
              joined += element!.content ?? "";
            });
            await Clipboard.setData(ClipboardData(text: joined));
          },
          icon: Icons.copy_rounded,
          visible: true,
          enabled: response.choices != null && response.choices!.length > 0,
        )
      ],
      bottomNavigation: JOBottomNavigation(
        items: [
          JOBottomNavigationItem(
            icon: Icons.home_outlined,
            route: "/jo_page_home",
            callback: () {
              setState(() {});
            },
            visible: true,
            enable: true,
          ),
          JOBottomNavigationItem(
            icon: Icons.star_rounded,
            callback: () {
              platform.makeCommentToApp();
              setState(() {});
            },
            visible: true,
            enable: true,
          ),
          JOBottomNavigationItem(
            icon: Icons.apps_rounded,
            callback: () {
              platform.getMyOtherApps();
              setState(() {});
            },
            visible: true,
            enable: true,
          ),
        ],
      ),
    );
  }
}
