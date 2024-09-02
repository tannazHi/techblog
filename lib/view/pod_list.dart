import 'package:flutter/material.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/models/fake_data.dart';
import 'package:flutter_techblog/my_colors.dart';
import 'package:flutter_techblog/my_strings.dart';
import 'package:flutter_techblog/view/main_screen.dart';
class PodList extends StatelessWidget {
  const PodList({
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
    return SafeArea(
        child: Scaffold(
            backgroundColor: SolidColors.scaffoldBg,
            appBar: AppBar(
              backgroundColor: SolidColors.scaffoldBg,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const MainScreen()));
                    },
                    child: const Icon(
                      Icons.arrow_circle_right_sharp,
                      color: SolidColors.circularRightSharp,
                      size: 60,
                    ),
                  ),
                  Text(
                    MyStrings.podList,
                    style: textTheme.titleMedium,
                  )
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.all(bodyMargin),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image(
                                image: Assets.images.pod1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      PodListMap["title"],
                                      style: textTheme.titleLarge,
                                    ),
                                    Text(
                                      PodListMap["writer"],
                                      style: textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image(
                                image: Assets.images.pod1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      PodListMap["title"],
                                      style: textTheme.titleLarge,
                                    ),
                                    Text(
                                      PodListMap["writer"],
                                      style: textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image(
                                image: Assets.images.pod1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      PodListMap["title"],
                                      style: textTheme.titleLarge,
                                    ),
                                    Text(
                                      PodListMap["writer"],
                                      style: textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image(
                                image: Assets.images.pod1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      PodListMap["title"],
                                      style: textTheme.titleLarge,
                                    ),
                                    Text(
                                      PodListMap["writer"],
                                      style: textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image(
                                image: Assets.images.pod1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      PodListMap["title"],
                                      style: textTheme.titleLarge,
                                    ),
                                    Text(
                                      PodListMap["writer"],
                                      style: textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image(
                                image: Assets.images.pod1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      PodListMap["title"],
                                      style: textTheme.titleLarge,
                                    ),
                                    Text(
                                      PodListMap["writer"],
                                      style: textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            )));
  }
}
