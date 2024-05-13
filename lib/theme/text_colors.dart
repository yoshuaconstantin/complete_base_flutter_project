import 'package:flutter/material.dart';

import '../helper/dimensions.dart';

class TextThemes {
  static const String fontFamily = "OpenSans";

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w900),
    displayMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w900),
    displaySmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w900),
    headlineLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w800),
    headlineMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w800),
    headlineSmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w800),
    titleLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w700),
    titleSmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15,fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w600),
    bodySmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w600),
    labelLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w700),
    labelMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w700),
    labelSmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size10, fontWeight: FontWeight.w700),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w900),
    displayMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w900),
    displaySmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w900),
    headlineLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w800),
    headlineMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w800),
    headlineSmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w800),
    titleLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w700),
    titleSmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15,fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w600),
    bodySmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w600),
    labelLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w700),
    labelMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w700),
    labelSmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size10, fontWeight: FontWeight.w700),
  );

  static TextTheme theme(BuildContext context){
    return TextTheme(
      displayLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w900),
      displayMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w900),
      displaySmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w900),
      headlineLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w800),
      headlineMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w800),
      headlineSmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w800),
      titleLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w700),
      titleMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w700),
      titleSmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15,fontWeight: FontWeight.w700),
      bodyLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size25, fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w600),
      bodySmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w600),
      labelLarge: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size20, fontWeight: FontWeight.w700),
      labelMedium: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size15, fontWeight: FontWeight.w700),
      labelSmall: TextStyle(fontFamily: fontFamily, fontSize: Dimensions.size10, fontWeight: FontWeight.w700),
    );
  }
}