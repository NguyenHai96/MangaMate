import 'package:flutter/material.dart';
import 'package:manga_mate/model/choice_button.dart';
import 'package:manga_mate/value/app_assets.dart';

class Dopple extends StatefulWidget {
  const Dopple({super.key});

  @override
  State<Dopple> createState() => _DoppleState();
}

class _DoppleState extends State<Dopple> {
  void _select(Choice choice) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size / 428;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(fit: StackFit.loose, children: <Widget>[
          Container(
            height: 443,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.background),
                    fit: BoxFit.fitHeight)),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Container(
                width: 40 * size.width,
                height: 40 * size.height,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    shape: BoxShape.circle,
                    backgroundBlendMode: BlendMode.darken),
                child: Center(
                  child: IconButton(
                    iconSize: 30,
                    color: Colors.white70,
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                  ),
                )),
          ),
          Positioned(
              top: 30,
              right: 30,
              child: Container(
                  width: 40 * size.width,
                  height: 40 * size.height,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      shape: BoxShape.circle,
                      backgroundBlendMode: BlendMode.darken),
                  child: PopupMenuButton(
                    onSelected: _select,
                    itemBuilder: (BuildContext context) {
                      return choices.skip(0).map((Choice choice) {
                        return PopupMenuItem<Choice>(
                          value: choice,
                          child: Text(choice.name),
                        );
                      }).toList();
                    },
                  )))
        ]),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Wednesday Addams',
                        style: AppStyle.getSize(context, AppStyle.h1.fontSize),
                        selectionColor: Colors.black,
                      ),
                      Image.asset(
                        AppAssets.subtract,
                        scale: size.height,
                      ),
                      Text(
                        "I'm not your friend",
                        style: AppStyle.getSize(context, AppStyle.h2.fontSize),
                        selectionColor: Colors.black,
                      ),
                      Text(
                        'Join me in an eerie and captivating journey where darkness and humor intertwine. Explore the unconventional as I reveal the hidden darkness within us all. Get ready for an enchanting adventure that will leave you bewitched and craving',
                        style: AppStyle.getSize(context, AppStyle.h2.fontSize),
                        selectionColor: Colors.black,
                      )
                    ],
                  ),
                )),
                //         ElevatedButton.icon(
                //             onPressed: () {},
                //             icon: Icon(Icons.chat, size: size.width * 20),
                //             label: Text(
                //               'Chat Now',
                //               style: AppStyle.getSize(context, AppStyle.h2.fontSize),
                //             )),
                //         Column(
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Text('Similar'),
                //             Container(
                //               child: PageView.builder(itemBuilder: ((context, index) {
                //                 return Material(
                //                   borderRadius: BorderRadius.all(Radius.circular(10)),
                //                   child: Container(
                //                       child: Image.asset(
                //                     AppAssets.luffy,
                //                     fit: BoxFit.fill,
                //                   )),
                //                 );
                //               })),
                //             )
                //           ],
                //         )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
