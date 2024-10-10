import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parfum_shop/screens.onboarding/onboarding.dart';
import 'package:parfum_shop/utils/theme/theme.dart';



class App extends StatelessWidget{
 const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }

}