import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:education_app/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final List<Introduction> list = [
    Introduction(
      title: 'Discover New \nOpportunities',
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      subTitleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: GoogleFonts.comfortaa().fontFamily,
      ),
      subTitle: 'Expand your knowledge on all sorts of subjects',
      imageUrl: 'assets/onboarding_one.png',
      imageHeight: 100,
    ),
    Introduction(
      title: 'Anywhere \nAnytime',
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      subTitleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: GoogleFonts.comfortaa().fontFamily,
      ),
      subTitle: 'Learn from anywhere at anytime',
      imageUrl: 'assets/onboarding_two.png',
      imageHeight: 100,
    ),
    Introduction(
      title: 'Collaborate',
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      subTitleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: GoogleFonts.comfortaa().fontFamily,
      ),
      subTitle: 'Collaborate with other students and teachers',
      imageUrl: 'assets/onboarding_three.png',
      imageHeight: 100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Transparent SVG background shape
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/blob.svg', // Your transparent SVG path
                fit: BoxFit.cover, // Make it cover the whole screen
              ),
            ),
            // Onboarding content on top of the shape
            IntroScreenOnboarding(
              introductionList: list,
              onTapSkipButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
