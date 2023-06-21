import 'package:flutter/material.dart';
import 'package:jo_body/jo_body.dart';
import 'package:jo_loading/jo_loading.dart';
import 'package:lanternet_open_ai/bases/Model/chat_gpt/image_gpt_dto.dart';
import 'package:lanternet_open_ai/bases/viewModels/chat_gpt/image_gpt_result.dart';
import 'package:lanternet_open_ai/components/generals/app/form/jo_text_field.dart';
import 'package:lanternet_open_ai/new_version/home/jo_page_home.dart';
import 'package:jo_buttons/jo_buttons.dart';
import '../../bases/Controller/Service/UserServiceV2.dart';
import '../../bases/Controller/Service/chat_gpt_service.dart';
import '../../components/generals/app/page/detail/jo_page_detail_bank_description.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

class JOPageImage extends StatefulWidget {
  JOPageImage({
    Key? key,
  }) : super(key: key);
  static String routeName = "/jo_page_image";

  @override
  State<JOPageImage> createState() => _JOPageImageState();
}

class _JOPageImageState extends State<JOPageImage> {
  final UrlLauncherPlatform launcher = UrlLauncherPlatform.instance;
  bool inProgress = false;
  bool keep = false;
  ImageGPTResult response = ImageGPTResult();
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
            JOPageDetailBankDescription(
              title: "تصویر ساز هوش مصنوعی",
            ),
            JOTextField(
              value: text,
              type: TextInputType.text,
              onChange: (p0) {
                text = p0;
              },
              hint: "متنت رو بنویس",
            ),
            (response.data?.length ?? 0) > 0
                ? Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.all(20.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: response.data!
                            .map(
                              (e) => InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(e.url ?? ""),
                                    ),
                                    border: Border.all(width: 1.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onTap: () async {
                                  await _launchInBrowser(e.url ?? "");
                                },
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
            ImageGPTDTO dto = ImageGPTDTO(
              prompt: text,
              n: 2,
              size: "1024x1024",
            );
            response = await ChatGPTService().imagePost(dto);
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
      ],
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launcher.launch(
      url,
      useSafariVC: false,
      useWebView: false,
      enableJavaScript: false,
      enableDomStorage: false,
      universalLinksOnly: false,
      headers: <String, String>{},
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
