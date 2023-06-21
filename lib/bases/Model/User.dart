class User {
  String? fullName;
  int? age;
  String? gender;
  bool? isActive;
  String? avatar;
  String? lastLoginDate;
  String? validCode;
  String? validCodeExpired;
  int? id;
  String? userName;
  String? password;
  String? email;
  String? phoneNumber;
  bool? twoFactorEnabled;
  String? lockoutEnd;
  bool? lockoutEnabled;
  int? accessFailedCount;

  User(
      {this.fullName,
      this.age,
      this.gender,
      this.isActive,
      this.avatar,
      this.lastLoginDate,
      this.validCode,
      this.validCodeExpired,
      this.id,
      this.userName,
      this.email,
      this.phoneNumber,
      this.twoFactorEnabled,
      this.lockoutEnd,
      this.lockoutEnabled,
      this.accessFailedCount});

  User.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'] ?? "";
    age = json['age'] ?? 0;
    gender = json['gender'] ?? "";
    isActive = json['isActive'] ?? false;
    avatar = json['avatar'] ?? "";
    lastLoginDate = json['lastLoginDate'];
    validCode = json['validCode'] ?? "";
    validCodeExpired = json['validCodeExpired'];
    id = json['id'] ?? 0;
    userName = json['userName'] ?? "";
    email = json['email'] ?? "";
    password = json['password'] ?? "";
    phoneNumber = json['phoneNumber'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['isActive'] = this.isActive;
    data['avatar'] = this.avatar;
    data['lastLoginDate'] = this.lastLoginDate;
    data['validCode'] = this.validCode;
    data['validCodeExpired'] = this.validCodeExpired;
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phoneNumber'] = this.phoneNumber;
    data['twoFactorEnabled'] = this.twoFactorEnabled;
    data['lockoutEnd'] = this.lockoutEnd;
    data['lockoutEnabled'] = this.lockoutEnabled;
    data['accessFailedCount'] = this.accessFailedCount;
    return data;
  }

  List<User> listFromJson(dynamic jsns) {
    if (jsns != null) {
      return jsns.map<User>((ct) {
        return User.fromJson(ct);
      }).toList();
    }

    return List.empty();
  }
}
