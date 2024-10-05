import 'package:education_app/thehomescreen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var _currentIndex = 0;
  final List<Widget> _screens = [
    Thehomescreen(),
    Thehomescreen(),
    Thehomescreen(),
    Thehomescreen(),
    Thehomescreen(),
    // Explorescreen(),
    // Servicesscreen(),
    // Socialsscreen(),
    // Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(37, 150, 190, 1),
      100: Color.fromRGBO(37, 150, 190, 1),
      200: Color.fromRGBO(37, 150, 190, 1),
      300: Color.fromRGBO(37, 150, 190, 1),
      400: Color.fromRGBO(37, 150, 190, 1),
      500: Color.fromRGBO(37, 150, 190, 1),
      600: Color.fromRGBO(37, 150, 190, 1),
      700: Color.fromRGBO(37, 150, 190, 1),
      800: Color.fromRGBO(37, 150, 190, 1),
      900: Color.fromRGBO(37, 150, 190, 1),
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
            top: 40.0, // Adjust the position as needed
            right: 20.0, // Adjust the position as needed
            child: IconButton(
              onPressed: () {
                // Handle notification button press
              },
              icon: Icon(
                Ionicons.notifications_circle_outline,
                size: 30.0,
                color: Colors.black, // Change color to suit your design
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
              icon: Icon(FluentIcons.home_12_regular),
              title: Text("Home"),
              selectedColor: Color.fromRGBO(37, 150, 190, 1),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(FluentIcons.new_16_filled),
              title: Text("Explore"),
              selectedColor: Color.fromRGBO(37, 150, 190, 1),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(FluentIcons.toolbox_16_regular),
              title: Text("Services"),
              selectedColor: Color.fromRGBO(37, 150, 190, 1),
            ),

            /// Social
            SalomonBottomBarItem(
              icon: Icon(FluentIcons.people_16_regular),
              title: Text("Social"),
              selectedColor: Color.fromRGBO(37, 150, 190, 1),
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(FluentIcons.person_accounts_20_regular),
              title: Text("Profile"),
              selectedColor: Color.fromRGBO(37, 150, 190, 1),
            ),
          ],
        ),
      ),
    );
  }
}
