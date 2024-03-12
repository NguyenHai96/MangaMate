import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manga_mate/model/choice_button.dart';
import 'package:manga_mate/model/model_character.dart';
import 'package:manga_mate/value/app_assets.dart';
import 'package:manga_mate/value/app_colors.dart';
import 'package:manga_mate/value/app_styles.dart';
import 'package:manga_mate/widgets/app_button.dart';

class Dopple extends StatefulWidget {
  const Dopple({super.key});

  @override
  State<Dopple> createState() => _DoppleState();
}

class _DoppleState extends State<Dopple> {
  List<AIComicCharacterModel> characters = [];
  List<String> listNames = [
    'Luffy',
    'hai',
    'trong',
    'Sanji',
    'Zoro',
    'Usop',
    'Nami',
    'Robin',
    'Brook',
    'Franky',
    'Jinbe',
    'Chopper'
  ];

  getCharacter() {
    List<AIComicCharacterModel> newList = [];

    for (int i = 0; i < listNames.length; i++) {
      newList.add(AIComicCharacterModel(
          name: listNames[i],
          numberChat: (i + 1) * 10,
          isFavorite: i % 2 == 0));
    }
    setState(() {
      characters.addAll(newList);
    });
  }

  @override
  void initState() {
    super.initState();
    getCharacter();
  }

  void _select(Choice choice) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(children: <Widget>[
          Container(
            height: 926.h,
            width: 428.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage(AppAssets.background),
                    fit: BoxFit.contain)),
          ),
          Positioned(
            top: 46.h,
            right: 20.w,
            left: 20.w,
            child: SizedBox(
              height: 50.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                      icon: Image.asset(AppAssets.leftArrow), onTap: () {}),
                  AppButton(icon: Image.asset(AppAssets.menu), onTap: () {})
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 629.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Wednesday Addams',
                                style: AppStyle.getSize(
                                        context, AppStyle.h1.fontSize)
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                            SizedBox(
                              width: 6.w,
                            ),
                            Image.asset(
                              AppAssets.subtract,
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 17,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "I'm not your friend",
                              style: AppStyle.getSize(
                                      context, AppStyle.h2.fontSize)
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 400.w,
                      margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Join me in an eerie and captivating journey where darkness and humor intertwine. Explore the unconventional as I reveal the hidden darkness within us all. Get ready for an enchanting adventure that will leave you bewitched and craving',
                            style:
                                AppStyle.getSize(context, AppStyle.h2.fontSize)
                                    .copyWith(
                                        color: AppColors.textColor,
                                        fontWeight: FontWeight.w400),
                            overflow: TextOverflow.clip,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40.h,
                      decoration: const BoxDecoration(
                          color: AppColors.chatColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        splashColor: Colors.pinkAccent,
                        onTap: () {
                          print('Test');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppAssets.chat),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              'Chat Now',
                              style: AppStyle.getSize(
                                      context, AppStyle.h2.fontSize)
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: SizedBox(
                        height: 286.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Similar',
                                  style: TextStyle(
                                      fontFamily: FontFamily.montserrat,
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 240.h,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: characters.length,
                                separatorBuilder: (context, index) => SizedBox(
                                  width: 4.w,
                                ),
                                itemBuilder: ((context, index) {
                                  String nameCharacter =
                                      characters[index].name ?? '';
                                  int numberChat =
                                      characters[index].numberChat ?? 0;
                                  return SizedBox(
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              AppAssets.luffy,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          child: Container(
                                            height: 33.h,
                                            width: 240.h,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 7.w),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 25.h,
                                                    width: 25.h,
                                                    child: CircleAvatar(
                                                      radius: 15.r,
                                                      child: ClipOval(
                                                        child: Image.asset(
                                                            AppAssets.luffy),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                      child: Row(
                                                    children: [
                                                      Text(
                                                        nameCharacter,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                FontFamily
                                                                    .montserrat,
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      SizedBox(
                                                        width: 4.w,
                                                      ),
                                                      Visibility(
                                                          visible:
                                                              characters[index]
                                                                  .isFavorite,
                                                          child: Image.asset(
                                                            AppAssets.subtract,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  )),
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Image.asset(
                                                            AppAssets.chat),
                                                        SizedBox(
                                                          width: 4.w,
                                                        ),
                                                        Text(
                                                          '${numberChat}k',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  FontFamily
                                                                      .montserrat,
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
