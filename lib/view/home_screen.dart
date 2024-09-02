import 'package:flutter/material.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/models/fake_data.dart';
import 'package:flutter_techblog/component/my_colors.dart';
import 'package:flutter_techblog/component/my_component.dart';
import 'package:flutter_techblog/component/my_strings.dart';
import 'package:flutter_techblog/view/blog_list.dart';
import 'package:flutter_techblog/view/pod_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.size,
    required this.textTheme,
    required this.bodyMargin,
  });

  final Size size;
  final TextTheme textTheme;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            HomePagePoster(size: size, textTheme: textTheme),
            HomePageTagList(bodyMargin: bodyMargin, textTheme: textTheme),
            const SizedBox(
              height: 32,
            ),
            SeeMoreBlog(bodyMargin: bodyMargin, textTheme: textTheme),
            HomePageBlogList(
                size: size, bodyMargin: bodyMargin, textTheme: textTheme),
            SeeMorePodcast(bodyMargin: bodyMargin, textTheme: textTheme),
            const SizedBox(
              height: 10,
            ),
            HomePagePodcastList(size: size, bodyMargin: bodyMargin),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
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
                      builder: (context) => const PodList(size: Size(1000, 1000), textTheme: TextTheme(), bodyMargin: 15)));
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
                      builder: (context) => const BlogList(size: Size(1000, 1000), textTheme: TextTheme(), bodyMargin: 15)));
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

class HomePagePodcastList extends StatelessWidget {
  const HomePagePodcastList({
    super.key,
    required this.size,
    required this.bodyMargin,
  });

  final Size size;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 2,
      child: ListView.builder(
          itemCount: podList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.only(right: index == 0 ? bodyMargin : 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: SizedBox(
                      // height: size.height / 8,
                      width: size.width / 2.9,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // image: Image(image: podList[index].image,),),
                        ),
                        child: Image.asset(podList[index].image),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Text(podList[index].name),
                  )
                ],
              ),
            );
          })),
    );
  }
}

class HomePageBlogList extends StatelessWidget {
  const HomePageBlogList({
    super.key,
    required this.size,
    required this.bodyMargin,
    required this.textTheme,
  });

  final Size size;
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
          itemCount: blogList.getRange(0, 5).length,
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
                            // image: DecorationImage(
                            //   image: NetworkImage(blogList[index].imageUrl),
                            //   fit: BoxFit.cover,
                            // ),
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
                                blogList[index].writer,
                                style: textTheme.titleSmall,
                              ),
                              Row(
                                children: [
                                  Text(
                                    blogList[index].views,
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
                        blogList[index].title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      )),
                ],
              ),
            );
          })
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
              child: MainTags(textTheme: textTheme, index: index,),
            );
          })),
    );
  }
}

class HomePagePoster extends StatelessWidget {
  const HomePagePoster({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width / 1.18,
          height: size.height / 4.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(homePageaPosterMap["imageAsset"]),
              fit: BoxFit.cover,
            ),
          ),
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              colors: GradiantColors.homePosterCoverGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
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
                "دوازده قدم برنامه نویسی یک دوره ی...",
                style: textTheme.headlineSmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}
