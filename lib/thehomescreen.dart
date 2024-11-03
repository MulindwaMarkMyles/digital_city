import 'package:education_app/view_place.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class Thehomescreen extends StatefulWidget {
  const Thehomescreen({super.key});

  @override
  State<Thehomescreen> createState() => _ThehomescreenState();
}

class _ThehomescreenState extends State<Thehomescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text("Hi, Myles!",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: GoogleFonts.comfortaa().fontFamily,
                        fontWeight: FontWeight.w900,
                      )),
                  Text(
                    "What do you want to do today?",
                    style: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: Colors.grey[600],
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Places",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          )),
                      Text("View All",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(37, 150, 190, 1),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Most Viewed",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(37, 149, 190, 0.244),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Latest",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(37, 149, 190, 0.244),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Nearby",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(37, 149, 190, 0.244),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Best Reviews",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ViewPlace(
                                    image_path: 'assets/arusha.jpg',
                                    place_name: 'Arusha, Tanzania',
                                    place_location: 'Tanzania',
                                    place_price: 2000,
                                    place_description:
                                        'Arusha is a vibrant town nestled at the foot of Mount Meru in northern Tanzania, serving as a gateway to some of Africa’s most renowned national parks. Known for its bustling markets, lush landscapes, and cool highland climate, it offers a mix of urban energy and natural beauty. As the safari capital of Tanzania, Arusha is the starting point for adventures to Serengeti, Ngorongoro Crater, and Kilimanjaro. The town itself is rich in cultural diversity, with a lively blend of local traditions, international influence, and a thriving craft scene, including Maasai beadwork and Tanzanian art.',
                                    place_rating: '4.8')),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20.0),
                              height: 250.0,
                              width: 170.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/arusha.jpg'), // Add your image here
                                  fit: BoxFit.cover, // Cover the entire screen
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1.0, // Border width
                                    ),
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  margin: const EdgeInsets.all(10.0),
                                  padding: const EdgeInsets.all(4.0),
                                  height: 50.0,
                                  width: 190.0,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Arusha, Tanzania",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontFamily: GoogleFonts.roboto()
                                                    .fontFamily)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                    Ionicons.location_outline,
                                                    size: 11.0,
                                                    color: Colors.white),
                                                const SizedBox(width: 5.0),
                                                Text("Tanzania",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontFamily:
                                                            GoogleFonts.roboto()
                                                                .fontFamily)),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                    FluentIcons.star_12_regular,
                                                    size: 11.0,
                                                    color: Colors.white),
                                                const SizedBox(width: 4.0),
                                                Text("4.8",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 11.0,
                                                        fontFamily:
                                                            GoogleFonts.roboto()
                                                                .fontFamily)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 5.0,
                                right: 5.0,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        FluentIcons.heart_12_regular))),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ViewPlace(
                                    image_path: 'assets/kilimanjaro.jpg',
                                    place_name: 'Kilimanjaro, Tanzania',
                                    place_location: 'Tanzania',
                                    place_price: 2000,
                                    place_description:
                                        'Kilimanjaro is a vibrant town nestled at the foot of Mount Meru in northern Tanzania, serving as a gateway to some of Africa’s most renowned national parks. Known for its bustling markets, lush landscapes, and cool highland climate, it offers a mix of urban energy and natural beauty. As the safari capital of Tanzania, Arusha is the starting point for adventures to Serengeti, Ngorongoro Crater, and Kilimanjaro. The town itself is rich in cultural diversity, with a lively blend of local traditions, international influence, and a thriving craft scene, including Maasai beadwork and Tanzanian art.',
                                    place_rating: '4.8')),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20.0),
                              height: 250.0,
                              width: 170.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/kilimanjaro.jpg'), // Add your image here
                                  fit: BoxFit.cover, // Cover the entire screen
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1.0, // Border width
                                    ),
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  margin: const EdgeInsets.all(10.0),
                                  padding: const EdgeInsets.all(4.0),
                                  height: 50.0,
                                  width: 190.0,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Kilimanjaro, Tanzania",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontFamily: GoogleFonts.roboto()
                                                    .fontFamily)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                    Ionicons.location_outline,
                                                    size: 11.0,
                                                    color: Colors.white),
                                                const SizedBox(width: 5.0),
                                                Text("Tanzania",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontFamily:
                                                            GoogleFonts.roboto()
                                                                .fontFamily)),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                    FluentIcons.star_12_regular,
                                                    size: 11.0,
                                                    color: Colors.white),
                                                const SizedBox(width: 4.0),
                                                Text("4.8",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 11.0,
                                                        fontFamily:
                                                            GoogleFonts.roboto()
                                                                .fontFamily)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 5.0,
                                right: 5.0,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        FluentIcons.heart_12_regular))),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ViewPlace(
                                    image_path: 'assets/kilimanjaro_2.jpg',
                                    place_name: 'Dodoma, Tanzania',
                                    place_location: 'Tanzania',
                                    place_price: 2000,
                                    place_description:
                                        'Dodoma is a vibrant town nestled at the foot of Mount Meru in northern Tanzania, serving as a gateway to some of Africa’s most renowned national parks. Known for its bustling markets, lush landscapes, and cool highland climate, it offers a mix of urban energy and natural beauty. As the safari capital of Tanzania, Arusha is the starting point for adventures to Serengeti, Ngorongoro Crater, and Kilimanjaro. The town itself is rich in cultural diversity, with a lively blend of local traditions, international influence, and a thriving craft scene, including Maasai beadwork and Tanzanian art.',
                                    place_rating: '4.8')),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20.0),
                              height: 250.0,
                              width: 170.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/kilimanjaro_2.jpg'), // Add your image here
                                  fit: BoxFit.cover, // Cover the entire screen
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1.0, // Border width
                                    ),
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  margin: const EdgeInsets.all(10.0),
                                  padding: const EdgeInsets.all(4.0),
                                  height: 50.0,
                                  width: 190.0,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Dodoma, Tanzania",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontFamily: GoogleFonts.roboto()
                                                    .fontFamily)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                    Ionicons.location_outline,
                                                    size: 11.0,
                                                    color: Colors.white),
                                                const SizedBox(width: 5.0),
                                                Text("Tanzania",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontFamily:
                                                            GoogleFonts.roboto()
                                                                .fontFamily)),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                    FluentIcons.star_12_regular,
                                                    size: 11.0,
                                                    color: Colors.white),
                                                const SizedBox(width: 4.0),
                                                Text("4.8",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 11.0,
                                                        fontFamily:
                                                            GoogleFonts.roboto()
                                                                .fontFamily)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 5.0,
                                right: 5.0,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        FluentIcons.heart_12_regular))),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Products",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          )),
                      Text("View All",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(37, 150, 190, 1),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Most Viewed",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(37, 149, 190, 0.244),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Newest",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(37, 149, 190, 0.244),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Nearby",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(37, 149, 190, 0.244),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text("Best Reviews",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20.0),
                            height: 250.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black, // Border color
                                width: 1.0, // Border width
                              ),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/crafts_1.jpg'), // Add your image here
                                fit: BoxFit.cover, // Cover the entire screen
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Border color
                                    width: 1.0, // Border width
                                  ),
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                margin: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.all(4.0),
                                height: 50.0,
                                width: 190.0,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Crafts",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                  Ionicons.location_outline,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 5.0),
                                              Text("Kenya",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                  FluentIcons.star_12_regular,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 4.0),
                                              Text("4.8",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 5.0,
                              right: 5.0,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      FluentIcons.heart_12_regular))),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20.0),
                            height: 250.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black, // Border color
                                width: 1.0, // Border width
                              ),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/crafts_1.jpeg'), // Add your image here
                                fit: BoxFit.cover, // Cover the entire screen
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Border color
                                    width: 1.0, // Border width
                                  ),
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                margin: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.all(4.0),
                                height: 50.0,
                                width: 190.0,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Crafts",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                  Ionicons.location_outline,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 5.0),
                                              Text("Uganda",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                  FluentIcons.star_12_regular,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 4.0),
                                              Text("4.8",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 5.0,
                              right: 5.0,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      FluentIcons.heart_12_regular))),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20.0),
                            height: 250.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black, // Border color
                                width: 1.0, // Border width
                              ),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/bags_1.jpeg'), // Add your image here
                                fit: BoxFit.cover, // Cover the entire screen
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Border color
                                    width: 1.0, // Border width
                                  ),
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                margin: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.all(4.0),
                                height: 50.0,
                                width: 190.0,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Bag",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                  Ionicons.location_outline,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 5.0),
                                              Text("Tanzania",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                  FluentIcons.star_12_regular,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 4.0),
                                              Text("4.8",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 5.0,
                              right: 5.0,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      FluentIcons.heart_12_regular))),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20.0),
                            height: 250.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black, // Border color
                                width: 1.0, // Border width
                              ),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/bags_2.jpg'), // Add your image here
                                fit: BoxFit.cover, // Cover the entire screen
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Border color
                                    width: 1.0, // Border width
                                  ),
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                margin: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.all(4.0),
                                height: 50.0,
                                width: 190.0,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Bag",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                  Ionicons.location_outline,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 5.0),
                                              Text("Uganda",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                  FluentIcons.star_12_regular,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 4.0),
                                              Text("4.8",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 5.0,
                              right: 5.0,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      FluentIcons.heart_12_regular))),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20.0),
                            height: 250.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black, // Border color
                                width: 1.0, // Border width
                              ),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/shoes_1.jpeg'), // Add your image here
                                fit: BoxFit.cover, // Cover the entire screen
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Border color
                                    width: 1.0, // Border width
                                  ),
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                margin: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.all(4.0),
                                height: 50.0,
                                width: 190.0,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Shoes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                  Ionicons.location_outline,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 5.0),
                                              Text("Uganda",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                  FluentIcons.star_12_regular,
                                                  size: 11.0,
                                                  color: Colors.white),
                                              const SizedBox(width: 4.0),
                                              Text("4.8",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11.0,
                                                      fontFamily:
                                                          GoogleFonts.roboto()
                                                              .fontFamily)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 5.0,
                              right: 5.0,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      FluentIcons.heart_12_regular))),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
