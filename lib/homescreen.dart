import 'package:education_app/thehomescreen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var _currentIndex = 0;
  final List<Widget> _screens = [
    const Thehomescreen(),
    const Thehomescreen(),
    const Thehomescreen(),
    const Thehomescreen(),
    const Thehomescreen(),
    // Explorescreen(),
    // Servicesscreen(),
    // Socialsscreen(),
    // Profilescreen(),
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
      home: Scaffold(
        body: Stack(children: [
          _screens[_currentIndex],
          Positioned(
            top: 40.0, 
            right: 20.0, 
            child: Material(
              color: Colors.white, 
              shape: const CircleBorder(), 
              elevation: 2.0,
              child: IconButton(
                onPressed: () {
                  // Handle notification button press
                },
                icon: const Icon(
                  Ionicons.notifications_circle_outline,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ]),
        bottomNavigationBar: SalomonBottomBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(FluentIcons.home_12_regular),
              title: const Text("Home"),
              selectedColor: const Color.fromRGBO(37, 150, 190, 1),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(FluentIcons.new_16_filled),
              title: const Text("Explore"),
              selectedColor: const Color.fromRGBO(37, 150, 190, 1),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(FluentIcons.toolbox_16_regular),
              title: const Text("Services"),
              selectedColor: const Color.fromRGBO(37, 150, 190, 1),
            ),

            /// Social
            SalomonBottomBarItem(
              icon: const Icon(FluentIcons.people_16_regular),
              title: const Text("Social"),
              selectedColor: const Color.fromRGBO(37, 150, 190, 1),
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(FluentIcons.person_accounts_20_regular),
              title: const Text("Profile"),
              selectedColor: const Color.fromRGBO(37, 150, 190, 1),
            ),
          ],
        ),
      ),
    );
  }
}
