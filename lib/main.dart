// import 'package:education_app/onboarding.dart';
import 'package:education_app/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Educ());
}

class Educ extends StatelessWidget {
  const Educ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
