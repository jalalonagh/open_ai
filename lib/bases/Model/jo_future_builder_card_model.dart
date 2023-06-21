class JOFutureBuilderCardModel {
  String? fbTitle;
  String? fbSubTitle;
  String? fbDescription;
  String? fbIcon;
  int? fbId;

  JOFutureBuilderCardModel({
    this.fbDescription,
    this.fbIcon,
    this.fbSubTitle,
    this.fbTitle,
    this.fbId,
  });

  @override
  JOFutureBuilderCardModel fromJson(Map<String, dynamic> json) {
    this.fbDescription = json['fbDescription'];
    this.fbIcon = json['fbIcon'];
    this.fbSubTitle = json['fbSubTitle'];
    this.fbTitle = json['fbTitle'];
    this.fbId = json['fbId'];
    return this;
  }
}
