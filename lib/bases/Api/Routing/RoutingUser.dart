import 'RoutingBase.dart';

class RoutingUser extends RoutingBase {
  static const BaseName = "Users";

  static const GET = "${RoutingBase.ApiUrl}/$BaseName";
  static const POST = "${RoutingBase.ApiUrl}/$BaseName";
  static const GET_Token = "${RoutingBase.ApiUrl}/$BaseName/Token";
  static const GET_RefreshToken =
      "${RoutingBase.ApiUrl}/$BaseName/CheckAndRefreshToken";
  static const POST_ValidPhone = "${RoutingBase.ApiUrl}/$BaseName/ValidPhone";
  static const PUT = "${RoutingBase.ApiUrl}/$BaseName";
  static const PUT_Username = "${RoutingBase.ApiUrl}/$BaseName";
  static const GET_ResetPassword =
      "${RoutingBase.ApiUrl}/$BaseName/ResetPassword";
  static const GET_FindUser =
      "${RoutingBase.ApiUrl}/$BaseName/FindUserByUsername";
  static const DELETE_ChangeThePassword =
      "${RoutingBase.ApiUrl}/$BaseName/ChangeThePassword";
}
