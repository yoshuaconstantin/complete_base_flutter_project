import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class AppColors {

  // START FROM COLORSCHEME
  static Color primary(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.primary;
    } else {
      return lightColorScheme.primary;
    }
  }

  static Color onPrimary(BuildContext context, {bool isInverse = true}) {
    if(!isInverse) {
      return lightColorScheme.onPrimary;
    }

    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return AdaptiveTheme.of(context).theme.colorScheme.onPrimary;
    } else {
      return AdaptiveTheme.of(context).theme.colorScheme.onPrimary;
    }
  }

  static Color textOnPrimary(bool isDarkMode) {
    if (isDarkMode) {
      return darkColorScheme.onPrimary;
    } else {
      return lightColorScheme.onPrimary;
    }
  }

  static Color primaryContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.primaryContainer;
    } else {
      return lightColorScheme.primaryContainer;
    }
  }

  static Color onPrimaryContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onPrimaryContainer;
    } else {
      return lightColorScheme.onPrimaryContainer;
    }
  }

  static Color secondary(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.secondary;
    } else {
      return lightColorScheme.secondary;
    }
  }

  static Color onSecondary(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onSecondary;
    } else {
      return lightColorScheme.onSecondary;
    }
  }

  static Color secondaryContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.secondaryContainer;
    } else {
      return lightColorScheme.secondaryContainer;
    }
  }

  static Color onSecondaryContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onSecondaryContainer;
    } else {
      return lightColorScheme.onSecondaryContainer;
    }
  }

  static Color tertiary(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.tertiary;
    } else {
      return lightColorScheme.tertiary;
    }
  }

  static Color onTertiary(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onTertiary;
    } else {
      return lightColorScheme.onTertiary;
    }
  }

  static Color tertiaryContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.tertiaryContainer;
    } else {
      return lightColorScheme.tertiaryContainer;
    }
  }

  static Color onTertiaryContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onTertiaryContainer;
    } else {
      return lightColorScheme.onTertiaryContainer;
    }
  }

  static Color error(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.error;
    } else {
      return lightColorScheme.error;
    }
  }

  static Color errorContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.errorContainer;
    } else {
      return lightColorScheme.errorContainer;
    }
  }

  static Color onError(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onError;
    } else {
      return lightColorScheme.onError;
    }
  }

  static Color onErrorContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onErrorContainer;
    } else {
      return lightColorScheme.onErrorContainer;
    }
  }

  static Color background(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.background;
    } else {
      return lightColorScheme.background;
    }
  }

  static Color onBackground(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onBackground;
    } else {
      return lightColorScheme.onBackground;
    }
  }

  static Color surface(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.surface;
    } else {
      return lightColorScheme.surface;
    }
  }

  static Color onSurface(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onSurface;
    } else {
      return lightColorScheme.onSurface;
    }
  }

  static Color surfaceVariant(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.surfaceVariant;
    } else {
      return lightColorScheme.surfaceVariant;
    }
  }

  static Color onSurfaceVariant(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onSurfaceVariant;
    } else {
      return lightColorScheme.onSurfaceVariant;
    }
  }

  static Color outline(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.outline;
    } else {
      return lightColorScheme.outline;
    }
  }

  static Color onInverseSurface(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.onInverseSurface;
    } else {
      return lightColorScheme.onInverseSurface;
    }
  }

  static Color inverseSurface(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.inverseSurface;
    } else {
      return lightColorScheme.inverseSurface;
    }
  }

  static Color inversePrimary(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.inversePrimary;
    } else {
      return lightColorScheme.inversePrimary;
    }
  }

  static Color shadow(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.shadow;
    } else {
      return lightColorScheme.shadow;
    }
  }

  static Color surfaceTint(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.surfaceTint;
    } else {
      return lightColorScheme.surfaceTint;
    }
  }

  static Color outlineVariant(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.outlineVariant;
    } else {
      return lightColorScheme.outlineVariant;
    }
  }

  static Color scrim(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColorScheme.scrim;
    } else {
      return lightColorScheme.scrim;
    }
  }
  // END FROM COLORSCHEME

  static Color successContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return Colors.green.shade700;
    } else {
      return Colors.green.shade100;
    }
  }

  static Color onSuccessContainer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return Colors.green.shade100;
    } else {
      return Colors.green.shade900;
    }
  }

  static Color onBlackWhite(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  static Color onWhite(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }

  static Color baseColorShimmer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return Colors.grey.shade600;
    } else {
      return Colors.grey.shade300;
    }
  }

  static Color highlightColorShimmer(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return Colors.grey.shade500;
    } else {
      return Colors.grey.shade100;
    }
  }

  static Color menuTertiary(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFF6bff1a);
    } else {
      return const Color(0xFFD5FFBE);
    }
  }

  static Color gradientCenter(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFF9f24f4);
    } else {
      return const Color(0xFF7E0ACF);
    }
  }

  static Color gradientBottom(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFF9f1dfb);
    } else {
      return const Color(0xFF6903B1);
    }
  }

  static Color notYetReached(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFF8c8c8c);
    } else {
      return const Color(0xFFD9D9D9);
    }
  }

  static Color gradientAccount(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFF9f1ff9);
    } else {
      return const Color(0xFFA834FA);
    }
  }

  static Color dark50Grey200(BuildContext context, {bool isInverse = true, Color? darkModeCustomColor}) {
    if(!isInverse) {
      return const Color(0xFFCBD2D9);
    }

    if(darkModeCustomColor != null) {
      return darkModeCustomColor;
    }

    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFF333333);
    } else {
      return const Color(0xFFCBD2D9);
    }
  }

  static Color dark70Grey300(BuildContext context, {bool isInverse = true, Color? darkModeCustomColor}) {
    if(!isInverse) {
      return const Color(0xFF404040);
    }

    if(darkModeCustomColor != null) {
      return darkModeCustomColor;
    }

    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFF404040);
    } else {
      return const Color(0xFF939597);
    }
  }

  static Color textDark50Grey200(bool isDarkMode) {
    if (isDarkMode) {
      return const Color(0xFF333333);
    } else {
      return const Color(0xFFCBD2D9);
    }
  }

  static Color dark20Grey100(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFF4D4D4D);
    } else {
      return const Color(0xFFE4E7EB);
    }
  }

  static Color grey300(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFF939597);
    } else {
      return const Color(0xFF939597);
    }
  }

  static Color lightBlueConstant(BuildContext context) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return const Color(0xFFB8E3FF);
    } else {
      return const Color(0xFFB8E3FF);
    }
  }

  static Color customColor(BuildContext context, {required Color lightColor, required Color darkColor}) {
    if ((AdaptiveTheme.of(context).brightness ?? Brightness.light) == Brightness.dark) {
      return darkColor;
    } else {
      return lightColor;
    }
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF161616),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF2A2A2A),
    onPrimaryContainer: Color(0xFF0C0C0C),
    secondary: Color(0xFF9B432D),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFDAD2),
    onSecondaryContainer: Color(0xFF3C0700),
    tertiary: Color(0xFF376A20),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFB7F397),
    onTertiaryContainer: Color(0xFF062100),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFFFFF),
    onError: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFF1C1B1E),
    surface: Color(0xFFFFFFFF), // Card Color
    onSurface: Color(0xFF1C1B1E),
    surfaceVariant: Color(0xFFE7E0EB),
    onSurfaceVariant: Color(0xFF49454E),
    outline: Color(0xFF7A757F),
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFFFFF),
    onPrimary: Color(0xFF161616),
    primaryContainer: Color(0xFF0C0C0C),
    onPrimaryContainer: Color(0xFF2A2A2A),
    secondary: Color(0xFF9B432D),
    onSecondary: Color(0xFF161616),
    secondaryContainer: Color(0xFFFFDAD2),
    onSecondaryContainer: Color(0xFF3C0700),
    tertiary: Color(0xFF376A20),
    onTertiary: Color(0xFF161616),
    tertiaryContainer: Color(0xFFB7F397),
    onTertiaryContainer: Color(0xFF062100),
    error: Color(0xFFEE3E3E),
    errorContainer: Color(0xFF161616),
    onError: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFF161616),
    onBackground: Color(0xFFFFFFFF),
    surface: Color(0xFF161616),
    onSurface: Color(0xFFFFFFFF),
    surfaceVariant: Color(0xFF161616),
    onSurfaceVariant: Color(0xFFFFFFFF),
    outline: Color(0xFF7A757F),
  );
}