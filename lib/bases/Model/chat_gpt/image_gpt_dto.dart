class ImageGPTDTO {
  String? prompt;
  int? n = 2;
  String? size = "1024x1024";

  ImageGPTDTO({this.prompt, this.n, this.size});

  ImageGPTDTO.fromJson(Map<String, dynamic> json) {
    prompt = json['prompt'];
    n = json['n'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['prompt'] = this.prompt;
    data['n'] = this.n;
    data['size'] = this.size;
    return data;
  }
}
