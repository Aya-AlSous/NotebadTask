import 'package:flutter/material.dart';
import 'package:splash_screen/first_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          animationDuration: const Duration(milliseconds: 3000),
          splashTransition: SplashTransition.rotationTransition,
          centered: true,
          splashIconSize: 800,
          nextScreen: const FirstPage(),
          splash: Image.asset('images/opening.png'),
        ));
  }
}
