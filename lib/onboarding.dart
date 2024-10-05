import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:flutter/material.dart';
import 'package:education_app/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

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
            // Onboarding content on top of the shape
            IntroScreenOnboarding(
              foregroundColor: Colors.black,
              introductionList: list,
              skipTextStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600),
              onTapSkipButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            // Shape behind the onboarding content that ignores touch events
            IgnorePointer(
              child: ClipPath(
                clipper: CurvedBottomClipper(),
                child: Container(
                  height: 300, // Adjust the height to your preference
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        94, 68, 137, 255), // Adjust color as needed
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom clipper for the curved shape
class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 100); // Start the path at bottom left
    var firstControlPoint =
        Offset(size.width / 6, size.height / 2); // Control point for the curve
    var firstEndPoint =
        Offset(size.width, size.height - 100); // End point of the curve
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, 0.0); // Draw straight line to the top-right corner
    path.close(); // Close the path to complete the shape

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
