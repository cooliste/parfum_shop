import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:parfum_shop/screens.onboarding/onboarding.dart';
import 'package:parfum_shop/utils/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/authentication/screens/login/login.dart';


void main() async {
  // Todo: Add Widgets Binding
  // Todo: Add local Storage
  // Todo: Await Native Splash
  // Todo: Initialize Firebase
  // Todo: Initialize Authentication
  WidgetsFlutterBinding.ensureInitialized();
  // Initialisation du stockage local (SharedPreferences)
  final prefs = await SharedPreferences.getInstance();

  // Vérifier si l'utilisateur a déjà vu l'onboarding
  bool isFirstTime = prefs.getBool('isFirstTime') ?? true;
  runApp(App(isFirstTime: isFirstTime));
}
class App extends StatelessWidget{
  final bool isFirstTime;
  const App({super.key, required this.isFirstTime});
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      home: isFirstTime ? const OnBoardingScreen() : const LoginScreen(),
    );
  }
}

