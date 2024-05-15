import 'dart:async';
import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:complete_base_flutter_project/bloc/home/home_bloc.dart';
import 'package:complete_base_flutter_project/global/global_class/app_version.dart';
import 'package:complete_base_flutter_project/module/hive_offline_database/setting_hive.dart';
import 'package:complete_base_flutter_project/screen/home_component/home_component.dart';
import 'package:complete_base_flutter_project/screen/splash_page/splash_page.dart';
import 'package:complete_base_flutter_project/theme/app_colors.dart';
import 'package:complete_base_flutter_project/theme/text_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:logger/logger.dart';

import 'package:lottie/lottie.dart';


import 'api/custom_http_overrides.dart';
import 'global/global_variable/enum_variable.dart';
import 'helper/dimensions.dart';
import 'helper/navigators.dart';
import 'helper/preferences.dart';
import 'main_bloc_provider.dart';


Future<void> main() async {
  
  runZonedGuarded(
      () async
      {
        WidgetsFlutterBinding.ensureInitialized();
        HttpOverrides.global = CustomHttpOverrides();

        //Register hive adapter inside module->hive_offline_database->setting_hive.dart to make sure hive adapter already initialized
        SettingHive.init;

        AppVersion().versionString();

        await EasyLocalization.ensureInitialized();
        await Preferences.getInstance().init();

        final savedThemeMode = await AdaptiveTheme.getThemeMode();

        //Set system preferredOrientiation to portrait
        SystemChrome.setPreferredOrientations(
          [
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ],
        ).then((value) => runApp(
          EasyLocalization(
              supportedLocales: const [
                Locale('en'),
                Locale('id')
              ],
              path: 'assets/translation',
              fallbackLocale: const Locale('id'),
              saveLocale: true,
              startLocale: const Locale('id'),
              child: MyApp(
                  savedThemeMode: savedThemeMode
              )
          ),
        ));
      }, (error, stackTrace) async {
        //Print out error to log.cat
        Logger().e('$error Caused By $StackTrace');
  });


}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.savedThemeMode});

  final AdaptiveThemeMode? savedThemeMode;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // SystemChrome.setSystemUIOverlayStyle(
    //     const SystemUiOverlayStyle(
    //       // statusBarColor: AppColor.primary,
    //       statusBarColor: Colors.transparent,
    //     )
    // );

    return MultiBlocProvider(
      //Move list of bloc provider into seperated file named main_bloc_provider
      providers: ListOfBlockProvider().blocProvider,
      child: GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidget: Center(
          child: Lottie.asset(
            "assets/lottie/--overlay-name",
            frameRate: FrameRate(60),
            width: Dimensions.size100 * 2,
            repeat: true,
          ),
        ),
        overlayColor: Colors.black87,
        overlayOpacity: 0.8,
        child: DismissableKeyboard(
          widget: AdaptiveTheme(
            light: ThemeData.from(
              colorScheme: AppColors.lightColorScheme,
              textTheme: TextThemes.lightTextTheme,
              useMaterial3: false,),
            dark: ThemeData.from(
                colorScheme: AppColors.darkColorScheme,
                textTheme: TextThemes.darkTextTheme,
                useMaterial3: false),
            // initial: Preferences.getInstance().getBool(SharedPreferenceKey.DARKMODE) == true ? AdaptiveThemeMode.dark : AdaptiveThemeMode.light,
            initial: savedThemeMode ?? AdaptiveThemeMode.light,
            builder: (theme, darkTheme) => GetMaterialApp(
              navigatorKey: Navigators.navigatorState,
              title: 'Complete example flutter project',
              theme: theme,
              darkTheme: darkTheme,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              builder: (context, child) {
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: child ?? Container()
                );
              },
              home: FlutterSplashScreen(
                backgroundColor: Colors.transparent,
                duration: const Duration(milliseconds: 1250),
                nextScreen: home(),
                splashScreenBody: SplashPage(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget home(){
  bool userActive = Preferences.getInstance().getBool(SharedPreferenceKey.USER_ACTIVE) ?? false;

  if(Preferences.getInstance().contain(SharedPreferenceKey.SESSION_ID) && userActive) {
    return const HomePageScreen();
  } else {
    return const HomePageScreen(); //Change this to login screen
  }
}

class DismissableKeyboard extends StatelessWidget {
  final Widget widget;

  const DismissableKeyboard({
    Key? key,
    required this.widget
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode focusScopeNode = FocusScope.of(context);

          if (!focusScopeNode.hasPrimaryFocus && focusScopeNode.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: widget
    );
  }
}
