import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
class RegisterIntro extends StatelessWidget{
  const RegisterIntro({super.key});

  @override
  Widget build(BuildContext context) {
   return SafeArea(
    child:Scaffold(
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset(Assets.images.techbot1)
          ],
        ),
      ),
    ) );
  }

}