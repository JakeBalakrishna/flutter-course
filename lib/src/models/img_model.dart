class ImageModel {
  int id;
  String url;
  String title;

  ImageModel({
    required this.id,
    required this.url,
    required this.title,
  });

  ImageModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        url = parsedJson['url'],
        title = parsedJson['title'];
}
