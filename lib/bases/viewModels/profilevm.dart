class ProfileVM {
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
  int? colorId;
  List<String>? roles;

  ProfileVM({
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
    this.colorId,
    this.roles,
  });

  ProfileVM.fromJson(Map<String, dynamic> json) {
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
    colorId = json['colorId'];
    priority = json['priority'];
    birthday = json['birthday'];
    if (json['roles'] != null) {
      roles = <String>[];
      json['roles'].forEach((v) {
        roles!.add(v.toString());
      });
    }
  }
}
