class UserSingleVM {
  int? id;
  String? phoneNumber;
  String? email;
  String? fullname;
  String? avatar;
  bool? isActive;
  String? creation;
  String? creationPersian;
  String? modified;
  String? modifiedPersian;
  int? priority;
  String? birthday;

  UserSingleVM({
    this.id,
    this.phoneNumber,
    this.email,
    this.fullname,
    this.avatar,
    this.isActive,
    this.creation,
    this.creationPersian,
    this.modified,
    this.modifiedPersian,
    this.priority,
    this.birthday,
  });

  UserSingleVM.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    fullname = json['fullname'];
    avatar = json['avatar'];
    isActive = json['isActive'];
    creation = json['creation'];
    creationPersian = json['creationPersian'];
    modified = json['modified'];
    modifiedPersian = json['modifiedPersian'];
    priority = json['priority'];
    birthday = json['birthday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['fullname'] = this.fullname;
    data['avatar'] = this.avatar;
    data['isActive'] = this.isActive;
    data['creation'] = this.creation;
    data['creationPersian'] = this.creationPersian;
    data['modified'] = this.modified;
    data['modifiedPersian'] = this.modifiedPersian;
    data['priority'] = this.priority;
    data['birthday'] = this.birthday;
    return data;
  }

  List<UserSingleVM> listFromJson(dynamic jsns) {
    if (jsns != null) {
      return jsns.map<UserSingleVM>((ct) {
        return UserSingleVM.fromJson(ct);
      }).toList();
    }

    return List.empty();
  }
}
