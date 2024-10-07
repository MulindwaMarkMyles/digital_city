import 'package:education_app/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main() {
  runApp(const Educ());
}

class Educ extends StatelessWidget {
  const Educ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterSplashScreen.gif(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              
            ],
          ),
          gifPath: 'assets/loader.gif',
          duration: const Duration(milliseconds: 1500),
          gifWidth: 100.0,
          gifHeight: 100.0,
          nextScreen: const Onboarding(),
        ),
    );
  }
}
