import 'package:flutter/material.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/my_colors.dart';
import 'package:flutter_techblog/my_component.dart';
import 'package:flutter_techblog/my_strings.dart';
// import 'package:flutter_techblog/models/fake_data.dart';
// import 'package:flutter_techblog/my_colors.dart';
// import 'package:flutter_techblog/my_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: Assets.images.avatar.provider(),
              height: 100,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(
                  Assets.icons.bluepen.provider(),
                  color: SolidColors.seeMore,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  MyStrings.imageProfileEdit,
                  style: textTheme.headlineLarge,
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              "فاطمه امیری",
              style: textTheme.titleMedium,
            ),
            Text(
              "fatemeamiri@gmail.com",
              style: textTheme.titleLarge,
            ),
            const SizedBox(
              height: 40,
            ),
            TechDivider(size: size),
            InkWell(
              onTap: () {},
              splashColor: SolidColors.primeryColor,
              child: SizedBox(
                  height: 45,
                  child: Center(
                      child: Text(
                    MyStrings.myFavoridBlog,
                    style: textTheme.titleLarge,
                  ))),
            ),
            TechDivider(size: size),
            InkWell(
              onTap: () {},
              splashColor: SolidColors.primeryColor,
              child: SizedBox(
                  height: 45,
                  child: Center(
                      child: Text(
                    MyStrings.myFavoridPodcast,
                    style: textTheme.titleLarge,
                  ))),
            ),
            TechDivider(size: size),
            InkWell(
              onTap: () {},
              splashColor: SolidColors.primeryColor,
              child: SizedBox(
                  height: 45,
                  child: Center(
                      child: Text(
                    MyStrings.logOut,
                    style: textTheme.titleLarge,
                  ))),
            ),
            SizedBox(
              height: size.height / 5,
            ),
          ],
        ));
  }
}
