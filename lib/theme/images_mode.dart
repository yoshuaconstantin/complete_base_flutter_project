import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/helper/navigators.dart';



class Images {
  static Brightness brightness() {
    if (Navigators.navigatorState.currentContext != null) {
      return Theme.of(Navigators.navigatorState.currentContext!).brightness;
    }

    return Brightness.light;
  }

  static bool darkMode() {
    return brightness() == Brightness.dark;
  }

  static String comnfo() {
    if (darkMode()) {
      return comnfoInverseLight();
    } else {
      return comnfoInverseDark();
    }
  }

  static String comnfonverse() {
    if (darkMode()) {
      return comnfoInverseDark();
    } else {
      return comnfoInverseLight();
    }
  }

  // static String loginIconTheme() {
  //   if (darkMode()) {
  //     return loginBubbleDark();
  //   } else {
  //     return loginBubbleLight();
  //   }
  // }

  static String loginIconTheme(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return loginBubbleLight();
    } else {
      return loginBubbleDark();
    }
  }

  static String otpBubble() {
    if (!darkMode()) {
      return otpBubbleLight();
    } else {
      return otpBubbleDark();
    }
  }

  static String comnfoInverseLight() {
    return "assets/icon/light_app_icon.png";
  }

  static String comnfoInverseDark() {
    return "assets/icon/dark_app_icon.png";
  }

  static String loginBubbleDark() {
    return "assets/image/loginIconDark.png";
  }

  static String loginBubbleLight() {
    return "assets/image/loginIconLight.png";
  }

  static String otpBubbleDark() {
    return "assets/image/light_bubble.png";
  }

  static String otpBubbleLight() {
    return "assets/image/dark_bubble.png";
  }
}
