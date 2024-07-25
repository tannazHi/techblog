import 'package:flutter/material.dart';
// import 'package:flutter_techblog/models/fake_data.dart';
import 'package:flutter_techblog/my_colors.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
// import 'package:flutter_techblog/my_strings.dart';
import 'package:flutter_techblog/view/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    double bodyMargin = size.width / 13;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: SolidColors.scaffoldBg,
          title: //appBar
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              Image(
                image: Assets.images.logo.provider(),
                height: size.height / 13.6,
              ),
              const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
          HomeScreen(size: size, textTheme: textTheme, bodyMargin: bodyMargin),
          Positioned(
            bottom:8,
            right: 0,
            left: 0,
            child: Container(
            height: size.height/10,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors:GradiantColors.bottomNavBackGround,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,)
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 25,left:25),
              child: Container(
                height: size.height/8,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(30) ,
                 gradient: const LinearGradient(
                  colors:GradiantColors.bottomNav ),
                ),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround ,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: ImageIcon(Assets.icons.icon.provider(),color: Colors.white,)),
                      IconButton(
                      onPressed: (){},
                      icon: ImageIcon(Assets.icons.w.provider(),color: Colors.white,),),
                      IconButton(
                      onPressed: (){},
                      icon: ImageIcon(Assets.icons.user.provider(),color: Colors.white,),),
                  ],
                ),
              ),
            ),
                    ),
          ) ,  
        ]),
      ),
    );
  }
}

