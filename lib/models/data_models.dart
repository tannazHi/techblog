class HashTagModel {
  String title;
  HashTagModel({required this.title});
}

class BlogModel {
  int id;
  String imageUrl;
  String title;
  String writer;
  String writerImageUrl;
  String content;
  String views;

  BlogModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.writer,
    required this.writerImageUrl,
    required this.content,
    required this.views,
  });
}

class PodCastModel {
  int id;
  String name;
  String image;

  PodCastModel({required this.id, required this.name, required this.image});
}
