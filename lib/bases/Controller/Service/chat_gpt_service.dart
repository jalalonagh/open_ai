import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lanternet_open_ai/bases/Api/Api.dart';
import 'package:lanternet_open_ai/bases/Api/ResponseModel.dart';
import 'package:lanternet_open_ai/bases/Model/chat_gpt/ChatGPTDTO.dart';
import 'package:lanternet_open_ai/bases/Model/chat_gpt/image_gpt_dto.dart';
import 'package:lanternet_open_ai/bases/viewModels/chat_gpt/ChatGPTResult.dart';

import '../../Api/Enums.dart';
import '../../Api/Routing/RoutingBase.dart';
import 'package:http/http.dart' as http;

import '../../viewModels/chat_gpt/image_gpt_result.dart';

class ChatGPTService extends Api {
  Future<ChatGPTResult> chatPost(ChatGPTDTO dto) async {
    try {
      var url = Uri.parse(urlGenerator(RoutingBase.ApiChatGPTUrl, []));
      var headers = headerGetter(HeaderEnum.basicHeaderEnum);
      var response = await http.post(
        url,
        headers: headers,
        body: jsonEncode(dto),
      );
      String data = utf8.decode(response.bodyBytes);
      if (data.isEmpty) {
        ChatGPTResult();
      }

      var res = json.decode(data);

      return ChatGPTResult.fromJson(res["data"]);
    } catch (e) {
      return ChatGPTResult();
    }
  }

  Future<ImageGPTResult> imagePost(ImageGPTDTO dto) async {
    try {
      var url = Uri.parse(urlGenerator(RoutingBase.ApiImageGPTUrl, []));
      var headers = headerGetter(HeaderEnum.basicHeaderEnum);
      var response = await http.post(
        url,
        headers: headers,
        body: jsonEncode(dto),
      );
      String data = utf8.decode(response.bodyBytes);
      if (data.isEmpty) {
        ImageGPTResult();
      }

      var res = json.decode(data);

      return ImageGPTResult.fromJson(res["data"]);
    } catch (e) {
      return ImageGPTResult();
    }
  }
}
