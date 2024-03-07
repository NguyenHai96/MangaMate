import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * *Style of Text, Button...
 */

class FontFamily {
  static final montserrat = 'Montserrat';
}

class AppStyle {
  static TextStyle h1 =
      TextStyle(fontFamily: FontFamily.montserrat, fontSize: 16);
  static TextStyle h2 =
      TextStyle(fontFamily: FontFamily.montserrat, fontSize: 14);

  static TextStyle getSize(BuildContext context, double? size) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scale = screenWidth / 428;
    return TextStyle(
      fontFamily: FontFamily.montserrat,
      fontSize: size != null ? size * scale : 0,
    );
  }
}
