import 'package:education_app/dating.dart';
import 'package:education_app/finance_screen.dart';
import 'package:education_app/profile_page.dart';
import 'package:education_app/thehomescreen.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'package:education_app/explorescreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var _currentIndex = 0;
  final List<Widget> _screens = [
    const Thehomescreen(),
    const Explorescreen(),
    FinanceScreen(),
    const DatingScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: const Color.fromRGBO(37, 150, 190, 1),
      100: const Color.fromRGBO(37, 150, 190, 1),
      200: const Color.fromRGBO(37, 150, 190, 1),
      300: const Color.fromRGBO(37, 150, 190, 1),
      400: const Color.fromRGBO(37, 150, 190, 1),
      500: const Color.fromRGBO(37, 150, 190, 1),
      600: const Color.fromRGBO(37, 150, 190, 1),
      700: const Color.fromRGBO(37, 150, 190, 1),
      800: const Color.fromRGBO(37, 150, 190, 1),
      900: const Color.fromRGBO(37, 150, 190, 1),
    };

    MaterialColor? customSwatch = MaterialColor(0xFF2596BE, color);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customSwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: Scaffold(
          body: _screens[_currentIndex],
          backgroundColor: Colors.white,
          bottomNavigationBar: SalomonBottomBar(
            backgroundColor: Colors.white,
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: const Icon(FluentIcons.home_12_regular),
                title: Text("Home", style: GoogleFonts.poppins()),
                selectedColor: const Color.fromRGBO(37, 150, 190, 1),
              ),
        
              /// Likes
              SalomonBottomBarItem(
                icon: const Icon(FluentIcons.new_16_filled),
                title: Text("Explore", style: GoogleFonts.poppins()),
                selectedColor: const Color.fromRGBO(37, 150, 190, 1),
              ),
        
              /// Search
              SalomonBottomBarItem(
                icon: const Icon(FluentIcons.toolbox_16_regular),
                title: Text("Finance", style: GoogleFonts.poppins()),
                selectedColor: const Color.fromRGBO(37, 150, 190, 1),
              ),
        
              /// Social
              SalomonBottomBarItem(
                icon: const Icon(FluentIcons.heart_12_regular),
                title:  Text("Dating", style: GoogleFonts.poppins()),
                selectedColor: const Color.fromRGBO(37, 150, 190, 1),
              ),
        
              /// Profile
              SalomonBottomBarItem(
                icon: const Icon(FluentIcons.person_accounts_20_regular),
                title: Text("Profile", style: GoogleFonts.poppins()),
                selectedColor: const Color.fromRGBO(37, 150, 190, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
