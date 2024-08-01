import 'package:flutter/material.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/models/fake_data.dart';
import 'package:flutter_techblog/my_colors.dart';

class TechDivider extends StatelessWidget {
  const TechDivider({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1.5,
      color: SolidColors.dividerColor,
      indent: size.width / 6,
      endIndent: size.width / 6,
    );
  }
}

// ignore: must_be_immutable
class MainTags extends StatelessWidget {
    MainTags({
    super.key,
    required this.textTheme,
    required this.index,
  });

  final TextTheme textTheme;
  // ignore: prefer_typing_uninitialized_variables
  var index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
          gradient: LinearGradient(
            colors: GradiantColors.tags,
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2,right: 10),
              child: ImageIcon(
                Assets.icons.hashtagicon.provider(),
                color: Colors.white,
                size: 16,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              tagList[index].title,
              style: textTheme.headlineMedium,
            ),
          ],
        ));
  }
}
