// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/my_colors.dart';
import 'package:flutter_techblog/my_strings.dart';
import 'package:flutter_techblog/view/main_screen.dart';

class BlogmanagmentScreen extends StatelessWidget {
  const BlogmanagmentScreen({
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
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
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
                    MyStrings.blogList,
                    style: textTheme.titleMedium,
                  )
                ],
              ),
            ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200, bottom: 15),
              child: SvgPicture.asset(
                Assets.images.techbot2.path,
                width: 120,
              ),
            ),
            Text(
              MyStrings.blogManagementScreen,
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
            Padding(
           padding: EdgeInsets.only(top:size.height/3),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                ),
                child: Text(
                  "بریم برای نوشتن یه مقاله باحال ",
                  style: textTheme.headlineSmall,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
