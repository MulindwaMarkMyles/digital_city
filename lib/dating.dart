import 'package:flutter/material.dart';

class DatingScreen extends StatefulWidget {
  const DatingScreen({super.key});

  @override
  State<DatingScreen> createState() => _DatingScreenState();
}

class _DatingScreenState extends State<DatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar with country selector and icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("🇩🇪 Germany",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Dating Section
              const Text("Dating",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    userCard("Halima", 19, "Berlin", "16 km away", isNew: true),
                    userCard("Vanessa", 18, "Munich", "4.8 km away",
                        isNew: true),
                    userCard("James", 20, "Hanover", "2.2 km away",
                        isNew: true),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Interest Section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Interest",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("View all", style: TextStyle(color: Colors.purple)),
                ],
              ),
              const SizedBox(height: 8),
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
              const Text("Around me",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("People with 'Music' interest around you",
                  style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 16),
              Container(
                height: 200,
                color: Colors.grey[200], // Placeholder for the map
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: const Text("Connect with Clara 🌟",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for the user card
  Widget userCard(String name, int age, String city, String distance,
      {bool isNew = false}) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
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
              child: const Text("NEW",
                  style: TextStyle(color: Colors.white, fontSize: 10)),
            ),
          const SizedBox(height: 8),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
                "assets/profile_placeholder.png"), // Replace with actual image
          ),
          const SizedBox(height: 8),
          Text(distance,
              style: const TextStyle(color: Colors.white, fontSize: 12)),
          Text("$name, $age",
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Text(city, style: const TextStyle(color: Colors.white54, fontSize: 12)),
        ],
      ),
    );
  }

  // Widget for interest tags
  Widget interestTag(String title, {bool highlight = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: highlight ? Colors.pink[100] : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(title,
          style: TextStyle(color: highlight ? Colors.purple : Colors.black)),
    );
  }
}

