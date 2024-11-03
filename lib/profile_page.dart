import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePage extends StatelessWidget {
  final Color primaryColor = const Color.fromRGBO(37, 150, 190, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text("Profile", style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        )),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Navigate to settings page
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Profile Header
          Container(
            padding: EdgeInsets.all(16),
            color: primaryColor,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/dp_woman.jpg', // Replace with user profile image URL
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Claire Nakirijja", // Replace with user's name
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Kampala, Uganda", // Replace with user's location
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                SizedBox(height: 20),
                // Stats Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileStat(label: "Followers", value: "1.2K"),
                    ProfileStat(label: "Posts", value: "300"),
                    ProfileStat(label: "Following", value: "180"),
                  ],
                ),
              ],
            ),
          ),
          // Options List
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              children: [
                ProfileOption(
                  icon: FluentIcons.shopping_bag_16_regular,
                  label: "My Orders",
                  primaryColor: primaryColor,
                  onTap: () {
                    // Navigate to My Orders page
                  },
                ),
                ProfileOption(
                  icon: Ionicons.wallet_outline,
                  label: "Wallet",
                  primaryColor: primaryColor,
                  onTap: () {
                    // Navigate to Wallet page
                  },
                ),
                ProfileOption(
                  icon: Ionicons.notifications_outline,
                  label: "Notifications",
                  primaryColor: primaryColor,
                  onTap: () {
                    // Navigate to Notifications page
                  },
                ),
                ProfileOption(
                  icon: Ionicons.heart_outline,
                  label: "Favorites",
                  primaryColor: primaryColor,
                  onTap: () {
                    // Navigate to Favorites page
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileStat extends StatelessWidget {
  final String label;
  final String value;

  ProfileStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color primaryColor;
  final VoidCallback onTap;

  ProfileOption({
    required this.icon,
    required this.label,
    required this.primaryColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: primaryColor, size: 28),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          ],
        ),
      ),
    );
  }
}

