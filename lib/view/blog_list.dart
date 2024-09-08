import 'package:flutter/material.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/models/fake_data.dart';
import 'package:flutter_techblog/component/my_colors.dart';
import 'package:flutter_techblog/component/my_strings.dart';
import 'package:flutter_techblog/view/main_screen.dart';

class BlogList extends StatelessWidget {
  const BlogList({
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
                          builder: (context) =>  MainScreen()));
                    },
                    child: const Icon(
                      Icons.arrow_circle_right_sharp,
                      color: SolidColors.circularRightSharp,
                      size: 60,
                    ),
                  ),
                  Text(
                    MyStrings.blogList,
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
                                image: Assets.images.pic1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SizedBox(
                                  width: size.width / 4,
                                  height: size.height / 8.5,
                                  child: Column(
                                    children: [
                                      Text(blogListMap["title"]),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(blogListMap["writer"]),
                                            Text(blogListMap["view"]),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 45),
                                              child: Text(
                                                blogListMap["tag"],
                                                style: textTheme.titleSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
                                image: Assets.images.pic1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SizedBox(
                                  width: size.width / 4,
                                  height: size.height / 8.5,
                                  child: Column(
                                    children: [
                                      Text(blogListMap["title"]),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(blogListMap["writer"]),
                                            Text(blogListMap["view"]),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 45),
                                              child: Text(
                                                blogListMap["tag"],
                                                style: textTheme.titleSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
                                image: Assets.images.pic1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SizedBox(
                                  width: size.width / 4,
                                  height: size.height / 8.5,
                                  child: Column(
                                    children: [
                                      Text(blogListMap["title"]),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(blogListMap["writer"]),
                                            Text(blogListMap["view"]),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 45),
                                              child: Text(
                                                blogListMap["tag"],
                                                style: textTheme.titleSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
                                image: Assets.images.pic1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SizedBox(
                                  width: size.width / 4,
                                  height: size.height / 8.5,
                                  child: Column(
                                    children: [
                                      Text(blogListMap["title"]),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(blogListMap["writer"]),
                                            Text(blogListMap["view"]),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 45),
                                              child: Text(
                                                blogListMap["tag"],
                                                style: textTheme.titleSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
                                image: Assets.images.pic1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SizedBox(
                                  width: size.width / 4,
                                  height: size.height / 8.5,
                                  child: Column(
                                    children: [
                                      Text(blogListMap["title"]),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(blogListMap["writer"]),
                                            Text(blogListMap["view"]),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 45),
                                              child: Text(
                                                blogListMap["tag"],
                                                style: textTheme.titleSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
                                image: Assets.images.pic1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SizedBox(
                                  width: size.width / 4,
                                  height: size.height / 8.5,
                                  child: Column(
                                    children: [
                                      Text(blogListMap["title"]),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(blogListMap["writer"]),
                                            Text(blogListMap["view"]),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 45),
                                              child: Text(
                                                blogListMap["tag"],
                                                style: textTheme.titleSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
                                image: Assets.images.pic1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SizedBox(
                                  width: size.width / 4,
                                  height: size.height / 8.5,
                                  child: Column(
                                    children: [
                                      Text(blogListMap["title"]),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(blogListMap["writer"]),
                                            Text(blogListMap["view"]),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 45),
                                              child: Text(
                                                blogListMap["tag"],
                                                style: textTheme.titleSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
                                image: Assets.images.pic1.provider(),
                                height: size.height / 8.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SizedBox(
                                  width: size.width / 4,
                                  height: size.height / 8.5,
                                  child: Column(
                                    children: [
                                      Text(blogListMap["title"]),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(blogListMap["writer"]),
                                            Text(blogListMap["view"]),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 45),
                                              child: Text(
                                                blogListMap["tag"],
                                                style: textTheme.titleSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
