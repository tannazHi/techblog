import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_techblog/controller/home_screen_controller.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/models/fake_data.dart';
import 'package:flutter_techblog/component/my_colors.dart';
import 'package:flutter_techblog/component/my_component.dart';
import 'package:flutter_techblog/component/my_strings.dart';
import 'package:flutter_techblog/view/blog_list.dart';
import 'package:flutter_techblog/view/pod_list.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
    required this.size,
    required this.textTheme,
    required this.bodyMargin,
  });
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  final Size size;
  final TextTheme textTheme;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Obx( ()=>Padding(
          padding: const EdgeInsets.only(top: 16),
          child:homeScreenController.loading.value==false? 
          Column(
              children: [
              poster(),
                HomePageTagList(bodyMargin: bodyMargin, textTheme: textTheme),
                const SizedBox(
                  height: 32,
                ),
                SeeMoreBlog(bodyMargin: bodyMargin, textTheme: textTheme),
                topVisited(),
                SeeMorePodcast(bodyMargin: bodyMargin, textTheme: textTheme),
                const SizedBox(
                  height: 10,
                ),
                topPodcast(),
                const SizedBox(
                  height: 60,
                ),
              ],
            )
          :const Center(child: loading()),
        ),
      ),
    );
  } 

  Widget topVisited() {
    return SizedBox(
      height: size.height / 3.5,
      child: Obx(
        () => ListView.builder(
            itemCount: homeScreenController.topVisitedList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              //       //blog item
              return Padding(
                padding: EdgeInsets.only(right: index == 0 ? bodyMargin : 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: size.height / 5.3,
                        width: size.width / 2.4,
                        child: Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(homeScreenController
                                    .topVisitedList[index].image!),
                                fit: BoxFit.cover,
                              ),
                            ),
                            foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: const LinearGradient(
                                colors: GradiantColors.blogPost,
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  homeScreenController
                                      .topVisitedList[index].author!,
                                  style: textTheme.titleSmall,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      homeScreenController
                                          .topVisitedList[index].view!,
                                      style: textTheme.titleSmall,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                        width: size.width / 2.4,
                        child: Text(
                          homeScreenController.topVisitedList[index].title!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )),
                  ],
                ),
              );
            })),
      ),
    );
  }

  Widget topPodcast() {
    return SizedBox(
      height: size.height / 2,
      child: Obx(
        () => ListView.builder(
            itemCount: homeScreenController.topPodcasts.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                padding: EdgeInsets.only(right: index == 0 ? bodyMargin : 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: SizedBox(
                          height: size.height / 5.3,
                          width: size.width / 2.9,
                          child: CachedNetworkImage(
                            imageUrl:
                                homeScreenController.topPodcasts[index].poster!,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.cover),
                              ),
                            ),
                            placeholder: ((context, url) => const loading()),
                                errorWidget:((context ,url, error)=> const Icon(
                                  Icons.image_not_supported_outlined ,
                                   size: 50,
                                   color: Colors.grey,)),
                          )),
                    ),
                    SizedBox(
                      child:
                          Text(homeScreenController.topPodcasts[index].title!),
                    )
                  ],
                ),
              );
            })),
      ),
    );
  }

  Widget poster(){
    return Stack(
      children: [
        Container(
          width: size.width / 1.18,
          height: size.height / 4.2,
         child:  CachedNetworkImage(
                            imageUrl:
                                homeScreenController.poster.value.image!,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.cover),
                              ),
                            ),
                            placeholder: ((context, url) =>
                              loading() ),
                                errorWidget:((context ,url, error)=> const Icon(
                                  Icons.image_not_supported_outlined ,
                                   size: 50,
                                   color: Colors.grey,)),
                          ),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    homePageaPosterMap["writer"] +
                        " - " +
                        homePageaPosterMap["date"],
                    style: textTheme.titleSmall,
                  ),
                  Row(
                    children: [
                      Text(
                        homePageaPosterMap["view"],
                        style: textTheme.titleSmall,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
              homeScreenController.poster.value.title!,
               style: textTheme.headlineSmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}



class SeeMorePodcast extends StatelessWidget {
  const SeeMorePodcast({
    super.key,
    required this.bodyMargin,
    required this.textTheme,
  });

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: bodyMargin,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const PodList(
                  size: Size(1000, 1000),
                  textTheme: TextTheme(),
                  bodyMargin: 15)));
        },
        child: Row(
          children: [
            ImageIcon(
              Assets.icons.bluemic.provider(),
              color: SolidColors.seeMore,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              MyStrings.viewhHotesPadcast,
              style: textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class SeeMoreBlog extends StatelessWidget {
  const SeeMoreBlog({
    super.key,
    required this.bodyMargin,
    required this.textTheme,
  });

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const BlogList(
                  size: Size(1000, 1000),
                  textTheme: TextTheme(),
                  bodyMargin: 15)));
        },
        child: Row(
          children: [
            ImageIcon(
              Assets.icons.bluepen.provider(),
              color: SolidColors.seeMore,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              MyStrings.viewHotestBlog,
              style: textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageTagList extends StatelessWidget {
  const HomePageTagList({
    super.key,
    required this.bodyMargin,
    required this.textTheme,
  });

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tagList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding:
                  EdgeInsets.fromLTRB(0, 15, index == 0 ? bodyMargin : 15, 8),
              child: MainTags(
                textTheme: textTheme,
                index: index,
              ),
            );
          })),
    );
  }
}

