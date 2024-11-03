import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class DatingScreen extends StatefulWidget {
  const DatingScreen({super.key});

  @override
  State<DatingScreen> createState() => _DatingScreenState();
}

class _DatingScreenState extends State<DatingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top bar with country selector and icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Uganda",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily)),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(FluentIcons.search_12_regular),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Dating Section
                Text("Discover new people",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.poppins().fontFamily)),
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      userCardMale("Sam", 19, "Kampala", "16 km away",
                          isNew: true),
                      userCardFemale("Halima", 19, "Gulu", "16 km away",
                          isNew: true),
                      userCardMale("Ben", 18, "Nairobi", "4.8 km away",
                          isNew: true),
                      userCardFemale("Betty", 20, "Arusha", "2.2 km away",
                          isNew: true),
                      userCardMale("Mark", 19, "Rwanda", "16 km away",
                          isNew: true),
                      userCardFemale("Madrine", 19, "Burundi", "16 km away",
                          isNew: true),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // Interest Section
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Interest",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("View all",
                        style: TextStyle(
                            color: const Color.fromRGBO(37, 150, 190, 1))),
                  ],
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    interestTag("Football"),
                    interestTag("Nature"),
                    interestTag("Language"),
                    interestTag("Photography"),
                    interestTag("Music", highlight: true),
                    interestTag("Writing"),
                  ],
                ),
                const SizedBox(height: 24),

                // Around Me Section
                Text("Around me",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.poppins().fontFamily)),
                const SizedBox(height: 8),
                Text("People with 'Music' interest around you",
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: GoogleFonts.poppins().fontFamily)),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 60), // Top padding
                      // Toggle buttons
                      Container(
                        height: 60,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ]),
                        child: Expanded(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ToggleButton(
                                  text: 'Make Friends',
                                  isSelected: true,
                                ),
                                ToggleButton(
                                  text: 'Search Partners',
                                  isSelected: false,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Space between toggle and card
                      // Card
                      FriendCard1(),
                      SizedBox(height: 20), // Space between toggle and card
                      FriendCard2(),
                      SizedBox(height: 20), // Space between toggle and card
                      FriendCard3(),
                      SizedBox(height: 20), // Space between toggle and card
                      FriendCard4(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

  // Widget for the user card
  Widget userCardMale(String name, int age, String city, String distance,
      {bool isNew = false}) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/man.jpg"), fit: BoxFit.cover),
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isNew)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("NEW",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: GoogleFonts.aBeeZee().fontFamily)),
            ),
          const SizedBox(height: 20),
          Text(distance,
              style: const TextStyle(color: Colors.white, fontSize: 12)),
          Text("$name, $age",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          Text(city,
              style: const TextStyle(color: Colors.white54, fontSize: 12)),
        ],
      ),
    );
  }

  Widget userCardFemale(String name, int age, String city, String distance,
      {bool isNew = false}) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/woman.jpg"), fit: BoxFit.cover),
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isNew)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("NEW",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: GoogleFonts.aBeeZee().fontFamily)),
            ),
          const SizedBox(height: 20),
          Text(distance,
              style: const TextStyle(color: Colors.white, fontSize: 12)),
          Text("$name, $age",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          Text(city,
              style: const TextStyle(color: Colors.white54, fontSize: 12)),
        ],
      ),
    );
  }

  // Widget for interest tags
  Widget interestTag(String title, {bool highlight = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: highlight
            ? const Color.fromRGBO(37, 150, 190, 0.3)
            : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(title,
          style: TextStyle(color: highlight ? Colors.blue : Colors.black)),
    );
  }
}

class ToggleButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  ToggleButton({required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade100 : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.blue,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class FriendCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image:
              AssetImage('assets/dp_woman.jpg'), // Replace with your image URL
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Overlay gradient
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          // Travel tag
          Positioned(
            top: 16,
            left: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.travel_explore, color: Colors.green, size: 16),
                  SizedBox(width: 4),
                  Text(
                    'Travel',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          // Text content
          Positioned(
            bottom: 60,
            left: 16,
            right: 16,
            child: Text(
              'If you could live anywhere in the world, where would you pick?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // User details
          Positioned(
            bottom: 16,
            left: 16,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/woman_dating.jpg'), // Replace with profile image URL
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Claire Nakiriija',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      'Kenya',
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Action buttons
          Positioned(
            right: 16,
            bottom: 16,
            child: Column(
              children: [
                ActionButton(icon: Ionicons.thumbs_up_outline),
                SizedBox(height: 10),
                ActionButton(icon: FluentIcons.chat_20_regular),
                SizedBox(height: 10),
                ActionButton(icon: Icons.more_vert),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FriendCard4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
              'assets/woman_dating_two.jpg'), // Replace with your image URL
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Overlay gradient
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          // Travel tag
          Positioned(
            top: 16,
            left: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.travel_explore, color: Colors.green, size: 16),
                  SizedBox(width: 4),
                  Text(
                    'Travel',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          // Text content
          Positioned(
            bottom: 60,
            left: 16,
            right: 16,
            child: Text(
              'If you could live anywhere in the world, where would you pick?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // User details
          Positioned(
            bottom: 16,
            left: 16,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/woman_dating_two.jpg'), // Replace with profile image URL
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Claire Nakiriija',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      'Kenya',
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Action buttons
          Positioned(
            right: 16,
            bottom: 16,
            child: Column(
              children: [
                ActionButton(icon: Ionicons.thumbs_up_outline),
                SizedBox(height: 10),
                ActionButton(icon: FluentIcons.chat_20_regular),
                SizedBox(height: 10),
                ActionButton(icon: Icons.more_vert),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FriendCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
              'assets/woman_dating.jpg'), // Replace with your image URL
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Overlay gradient
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          // Travel tag
          Positioned(
            top: 16,
            left: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.travel_explore, color: Colors.green, size: 16),
                  SizedBox(width: 4),
                  Text(
                    'Travel',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          // Text content
          Positioned(
            bottom: 60,
            left: 16,
            right: 16,
            child: Text(
              'If you could live anywhere in the world, where would you pick?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // User details
          Positioned(
            bottom: 16,
            left: 16,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/dp_woman.jpg'), // Replace with profile image URL
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Claire Nakiriija',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      'Kenya',
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Action buttons
          Positioned(
            right: 16,
            bottom: 16,
            child: Column(
              children: [
                ActionButton(icon: Ionicons.thumbs_up_outline),
                SizedBox(height: 10),
                ActionButton(icon: FluentIcons.chat_20_regular),
                SizedBox(height: 10),
                ActionButton(icon: Icons.more_vert),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FriendCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
              'assets/woman_dating_three.jpg'), // Replace with your image URL
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Overlay gradient
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          // Travel tag
          Positioned(
            top: 16,
            left: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.travel_explore, color: Colors.green, size: 16),
                  SizedBox(width: 4),
                  Text(
                    'Travel',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          // Text content
          Positioned(
            bottom: 60,
            left: 16,
            right: 16,
            child: Text(
              'If you could live anywhere in the world, where would you pick?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // User details
          Positioned(
            bottom: 16,
            left: 16,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/woman_dating.jpg'), // Replace with profile image URL
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Claire Nakiriija',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      'Kenya',
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Action buttons
          Positioned(
            right: 16,
            bottom: 16,
            child: Column(
              children: [
                ActionButton(icon: Ionicons.thumbs_up_outline),
                SizedBox(height: 10),
                ActionButton(icon: FluentIcons.chat_20_regular),
                SizedBox(height: 10),
                ActionButton(icon: Icons.more_vert),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;

  ActionButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.black, size: 24),
    );
  }
}
