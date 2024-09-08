import 'package:flutter_techblog/component/api_constant.dart';
import 'package:flutter_techblog/models/article_model.dart';
import 'package:flutter_techblog/models/podcast_model.dart';
import 'package:flutter_techblog/models/poster_model.dart';
import 'package:flutter_techblog/services/dio_service.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  Rx<PosterModel> poster = PosterModel().obs;
  RxList tagsList = RxList();
  RxList<ArticleModel> topVisitedList = RxList();
  RxList<PodcastModel> topPodcasts = RxList();
  RxBool loading = false.obs;

  @override
  onInit() {
    super.onInit();
    getHomeItems();
  }

  getHomeItems() async {
    loading.value = true;
    var response = await DioService().getMethod(ApiConstant.getHomeItems);
    if (response.statusCode == 200) {
      response.data['top_visited'].forEach((element) {
        topVisitedList.add(ArticleModel.fromJson(element));
      });
      response.data['top_podcasts'].forEach((element) {
        topPodcasts.add(PodcastModel.fromJson(element));
      });

      poster.value = PosterModel.fromJson(response.data['poster']);
      loading.value = false;
    }
  }
}
