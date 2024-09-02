import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
import 'package:flutter_techblog/component/my_strings.dart';
import 'package:flutter_techblog/view/my_cats.dart';


class RegisterIntro extends StatelessWidget {
  const RegisterIntro({  super.key,
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
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.images.techbot1.path,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: MyStrings.welcome,
                    style: textTheme.titleLarge,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 64),
              child: ElevatedButton(
                onPressed: () {
                  _showEmailBottomSheet(context, size, textTheme);
                },
                child: Text(
                  "بزن بریم ",
                  style: textTheme.headlineSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Future<dynamic> _showEmailBottomSheet(
      BuildContext context, Size size, TextTheme textTheme) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: ((context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: size.height / 2.3,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      MyStrings.insertYourEmail,
                      style: textTheme.titleLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: TextField(
                        onChanged: (value) {},
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "techblog@gmail.com",
                          hintStyle: textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        Navigator.pop(context);
                        _activateCodeBottomSheet(context, size, textTheme);
                      }),
                      child: Text(
                        "ادامه",
                        style: textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }

  Future<dynamic> _activateCodeBottomSheet(
      BuildContext context, Size size, TextTheme textTheme) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: ((context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: size.height / 2.3,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      MyStrings.activateCode,
                      style: textTheme.titleLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: TextField(
                        onChanged: (value) {},
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "******",
                          hintStyle: textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const MyCats()));
                      }),
                      child: Text(
                        "ادامه",
                        style: textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
