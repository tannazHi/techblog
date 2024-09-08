import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/models/data_models.dart';

Map homePageaPosterMap = {
  "imageAsset": Assets.images.programming.path,
  "writer": "ملیکا عزیزی",
  "date": "یک روز پیش",
  "title": "دوازده قدم برنامه نویسی یک دوره ی ",
  "view": "251",
};
Map blogListMap = {
  "imageAsset": Assets.images.pic1.path,
  "writer": "ملیکا عزیزی",
  "title": "رازهای اساسینز کرید والهالا؛ از هری پاتر و ارباب حلقه‌ها تا دارک سولز",
  "view": "بازدید 235",
  "tag" : "بازی رایانه ای"
};
// ignore: non_constant_identifier_names
Map PodListMap = {
  "writer": "سیاوش امیریان",
  "title": "پادکست رمزون",
};
//blog fake data
List<HashTagModel> tagList = [
  HashTagModel(title: "جاوا"),
  HashTagModel(title: "کاتلین"),
  HashTagModel(title: "وب"),
  HashTagModel(title: "هوش مصنوعی"),
  HashTagModel(title: "ای او تی"),
  HashTagModel(title: "دارت"),
  // HashTagModel(title: "داjijkjlkjkljkljlرت"),
];

List<BlogModel> blogList = [
  BlogModel(
    id: 1,
    imageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
    title: "ایلان ماسک حدود 4 میلیارد از سهام تسلا را فروخت",
    writer: "ملیکا عزیزی",
    writerImageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
    content: "",
    views: "256",
  ),
  BlogModel(
      id: 1,
      imageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
      title: "ایلان ماسک حدود 4 میلیارد از سهام تسلا را فروخت",
      writer: "جواد تاجی",
      writerImageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
      content: "",
      views: "256"),
  BlogModel(
      id: 1,
      imageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
      title: "ایلان ماسک حدود 4 میلیارد از سهام تسلا را فروخت",
      writer: "جواد تاجی",
      writerImageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
      content: "",
      views: "256"),
  BlogModel(
      id: 1,
      imageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
      title: "ایلان ماسک حدود 4 میلیارد از سهام تسلا را فروخت",
      writer: "جواد تاجی",
      writerImageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
      content: "",
      views: "256"),
  BlogModel(
      id: 1,
      imageUrl:
          "https://th.bing.com/th/id/R.e668ab40893c437ba3c8c86106bc1b80?rik=vAyHMqB%2bmtP%2fzg&pid=ImgRaw&r=0",
      title: "ایلان ماسک حدود 4 میلیارد از سهام تسلا را فروخت",
      writer: "جواد تاجی",
      writerImageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
      content: "",
      views: "256"),
  BlogModel(
      id: 1,
      imageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
      title: "ایلان ماسک حدود 4 میلیارد از سهام تسلا را فروخت",
      writer: "جواد تاجی",
      writerImageUrl: "https://wallpaperaccess.com/full/4061963.jpg",
      content: "",
      views: "256"),
];


 List<HashTagModel> selectedTags=[];
