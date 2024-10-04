import 'package:education_app/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main() {
  runApp(Educ());
}

class Educ extends StatelessWidget {
  const Educ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterSplashScreen.scale(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white,
            ],
          ),
          childWidget: SizedBox(
            height: 250,
            child: Image.asset("assets/education_logo_2.png"),
          ),
          duration: const Duration(milliseconds: 1500),
          animationDuration: const Duration(milliseconds: 1000),
          onAnimationEnd: () => debugPrint("On Scale End"),
          nextScreen: Onboarding(),
        ),
    );
  }
}
