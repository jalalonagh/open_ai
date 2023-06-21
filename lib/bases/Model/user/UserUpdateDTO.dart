class UserUpdateDTO {
  int? id;
  String? phoneNumber;
  String? email;
  String? userName;
  String? fullname;
  String? avatar;
  int? priority;
  String? birthday;

  UserUpdateDTO(
      {this.phoneNumber,
      this.email,
      this.userName,
      this.fullname,
      this.avatar,
      this.id,
      this.priority,
      this.birthday});

  UserUpdateDTO.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    userName = json['userName'];
    fullname = json['fullname'];
    avatar = json['avatar'];
    priority = json['priority'];
    birthday = json['birthday'];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['userName'] = this.userName;
    data['fullname'] = this.fullname;
    data['id'] = this.id;
    data['avatar'] = this.avatar;
    data['priority'] = this.priority;
    data['birthday'] = this.birthday;
    return data;
  }
}
