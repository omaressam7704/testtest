import 'package:flutter/material.dart';
import 'package:islami/screens/intro_screen.dart';
import 'package:islami/screens/main_screen.dart';
import 'package:islami/screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.route, // Start with Splash Page
      routes: {
        SplashPage.route: (context) => const SplashPage(),
        IntroScreen.route: (context) => const IntroScreen(),
        MainScreen.route: (context) => const MainScreen(),
      },
    );
  }
}
