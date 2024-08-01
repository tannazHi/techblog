import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';
// import 'package:flutter_techblog/models/data_models.dart';
import 'package:flutter_techblog/models/fake_data.dart';
import 'package:flutter_techblog/my_colors.dart';
import 'package:flutter_techblog/my_component.dart';
import 'package:flutter_techblog/my_strings.dart';


class MyCats extends StatefulWidget {
  const MyCats({super.key});

  @override
  State<MyCats> createState() => _MyCatsState();
}

class _MyCatsState extends State<MyCats> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
                ),
                SvgPicture.asset(
                  Assets.images.techbot1.path,
                  height: 100,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(MyStrings.successfulRefistration,
                    style: textTheme.titleMedium),
                const SizedBox(
                  height: 32,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: "نام و نام خانوادگی",
                    hintStyle: textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  MyStrings.chooseCats,
                  style: textTheme.titleMedium,
                ),
                //tag list
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: SizedBox(
                    width: double.infinity,
                    height: 110,
                    child: GridView.builder(
                        physics: const ClampingScrollPhysics(),
                        itemCount: tagList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          childAspectRatio: 0.4,
                        ),
                        itemBuilder: ((context, index) {
                          return InkWell(
                              onTap: (() {
                                setState(() {
                                  selectedTags.add(tagList[index]);
                                });
                              }),
                              child:
                                  MainTags(textTheme: textTheme, index: index));
                        })),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Image.asset(
                  Assets.images.flash.path,
                  scale: 2,
                ),
                //selected tags
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: GridView.builder(
                        physics: const ClampingScrollPhysics(),
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 15,
                          crossAxisCount: 1,
                          childAspectRatio: 0.5,
                        ),
                        itemBuilder: ((context, index) {
                          return Container(
                              height: 60,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24),
                                ),
                                color: SolidColors.surface,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Text(
                                    //   selectedTags[index].title,
                                    //   style: textTheme.titleLarge,
                                    // ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: (() {
                                        setState(() {
                                          selectedTags.removeAt(index);
                                        });
                                      }),
                                      child: const Icon(
                                        CupertinoIcons.delete,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        })),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                ElevatedButton(
                  onPressed: (() {
                    secondMainBottomSheet(context, size, textTheme);
                  }),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 20),
                  ),
                  child: Text(
                    "ادامه",
                    style: textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Future<dynamic> secondMainBottomSheet(
      BuildContext context, Size size, TextTheme textTheme) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: ((context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              height: size.height / 3,
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16,16, 8),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.images.techbot1.path ,width: 30,),
                        Text(MyStrings.secondMainTitle,style: textTheme.titleLarge,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(MyStrings.secondMainText ,style: textTheme.bodyMedium,),
                  ),
                   const SizedBox(height: 64,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageIcon(Assets.icons.pen.provider(),),
                      Text(MyStrings.blogManagement,style: textTheme.titleLarge,),
                       ImageIcon(Assets.icons.mic.provider(),),
                       Text(MyStrings.podCastManagement,style: textTheme.titleLarge,),
                    ],
                  )
                ],
              ),
              
              ),
          );
        }));
  }
}
