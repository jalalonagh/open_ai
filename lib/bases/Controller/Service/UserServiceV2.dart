import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../new_version/sign/jo_page_signin.dart';
import '../../Api/Api.dart';
import '../../Api/Enums.dart';
import '../../Api/QueryModel.dart';
import '../../Api/ResponseModel.dart';
import '../../Api/Routing/RoutingBase.dart';
import '../../Api/Routing/RoutingUser.dart';
import '../../Utilities/SharedPreferencePath.dart';
import '../../viewModels/profilevm.dart';

class UserServiceV2 extends Api {
  final String baseUrl = "${RoutingBase.userApiUrl}/Users";
  String jwtKey = "ai-jwt-data";
  static String jwt = "";
  static bool inOperation = false;
  static ProfileVM? profileData = null;
  static String? redirectRoute;

  void setRedirect(String route) {
    redirectRoute = route;
  }

  void redirect(BuildContext context) {
    Navigator.pushNamed(context, redirectRoute ?? "");
  }

  Future<bool> isLoggedin() async {
    jwt = await SharedPreferencePath().getUserDataInSharePrefrences(jwtKey);
    return jwt.isNotEmpty;
  }

  Future<ResponseModel<dynamic>> profile() async {
    var response = await httpGET<ResponseModel<ProfileVM>>(
      "$baseUrl/GetProfile",
      [],
      HeaderEnum.bearerHeaderEnum,
      ResponseEnum.responseModelEnum,
    );

    if (response.isSuccess) {
      profileData = ProfileVM.fromJson(response.data);
    }
    return response;
  }

  Future<void> setJWT(String token) async {
    jwt = token;
    await SharedPreferencePath().setUserDataInSharePrefrences(token, jwtKey);
  }

  Future<String> getJWT() async {
    jwt = await SharedPreferencePath().getUserDataInSharePrefrences(jwtKey);
    return jwt;
  }

  Future<ResponseModel<dynamic>> getValidation(String username) async {
    if (username.isNotEmpty) {
      var response = await httpPOST<ResponseModel<String>>(
        "$baseUrl/GetValidationCode",
        [
          QueryModel(name: "mobile", value: username),
        ],
        "",
        HeaderEnum.basicHeaderEnum,
        ResponseEnum.responseModelEnum,
      );
      return response;
    }
    return ResponseModel<dynamic>();
  }

  Future<ResponseModel<dynamic>> getTokenValidation(
      String username, String otp) async {
    if (username.isNotEmpty) {
      var response = await httpPOST<ResponseModel<String>>(
        "$baseUrl/GetTokenOnValidation",
        [
          QueryModel(name: "mobile", value: username),
          QueryModel(name: "validation", value: otp),
        ],
        "",
        HeaderEnum.basicHeaderEnum,
        ResponseEnum.responseModelEnum,
      );
      return response;
    }
    return ResponseModel<dynamic>();
  }

  Future<ResponseModel> FindUser(String username) async {
    var response = await httpGET(
      RoutingUser.GET_FindUser,
      [QueryModel(name: "username", value: username)],
      HeaderEnum.bearerHeaderEnum,
      ResponseEnum.responseModelEnum,
    );
    return response;
  }

  Future authorization(BuildContext context) async {
    UserServiceV2().getJWT().then((jwt) {
      UserServiceV2().profile().then((p) {
        if (!p.isSuccess) {
          Navigator.of(context).pushNamed(JOPageSignIn.routeName);
        }
      });
    });
  }

  void setOperation(bool op) {
    inOperation = op;
  }

  bool getOperation() {
    return inOperation;
  }

  bool isForMe(int? userId) {
    return userId == UserServiceV2.profileData?.id &&
        UserServiceV2.profileData != null;
  }
}
