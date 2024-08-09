
import 'package:flutter/material.dart';


import '../../core/global/global_class/app_version.dart';
import '../../core/helper/dimensions.dart';
import '../../theme/app_colors.dart';
import '../../theme/images_mode.dart';
import '../../theme/text_colors.dart';

class SplashPage extends StatefulWidget {
  SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: Dimensions.screenWidth,
        height: Dimensions.screenHeight,
        color: AppColors.primary(context),
        child: Stack(
          children: [
            Center(
              child: Container(
                height: Dimensions.screenHeight * 0.4,
                width: Dimensions.screenWidth * 0.4,
                child: Image.asset(Images.comnfo()),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: Dimensions.screenHeight* 0.95),
                alignment: Alignment.center,
                  child: Text(AppVersion().versionInfo, style: TextThemes.theme(context).displaySmall,))
          ],
        ),
      ),
    );
  }
}
