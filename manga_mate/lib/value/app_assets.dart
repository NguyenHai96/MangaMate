/*
* define path of assets (image)
*/

import 'package:flutter/material.dart';

class AppAssets {
  static final String imagePath = 'assets/images/';
  static final String leftArrow = imagePath + 'left_arrow.png';
  static final String rightArrow = imagePath + 'right_arrow.png';
  static final String luffy = imagePath + 'luffy.png';
  static final String subtract = imagePath + 'subtract.png';
  static final String chat = imagePath + 'chat.png';
  static final String background = imagePath + 'background.png';

  static double getSize(BuildContext context, double? size) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scale = screenWidth / 375;
    return scale;
  }
}
