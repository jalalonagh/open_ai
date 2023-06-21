import 'package:lanternet_open_ai/bases/viewModels/UserVM.dart';

class LoginResponse {
  String? token;
  int? userId;
  UserVM? user;

  LoginResponse({
    this.token,
    this.userId,
    this.user,
  });

  LoginResponse.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userId = json['userId'];
    if (json["user"] != null) user = UserVM.fromJson(json["user"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['userId'] = this.userId;
    if (this.user != null) data["user"] = this.user?.toJson();
    return data;
  }
}
