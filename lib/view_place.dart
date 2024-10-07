import 'dart:ui'; // Import this for the blur effect
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ViewPlace extends StatelessWidget {
  final String image_path;
  final String place_name;
  final String place_location;
  final int place_price;
  final String place_description;
  final String place_rating;

  // Constructor
  const ViewPlace({
    super.key,
    required this.image_path,
    required this.place_name,
    required this.place_location,
    required this.place_price,
    required this.place_description,
    required this.place_rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Stack(children: [
          ListView(
            children: [
              const SizedBox(height: 20.0),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 500.0,
                    width: 380.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage(
                          image_path,
                        ), // Add your image here
                        fit: BoxFit.cover, // Cover the entire screen
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                  Positioned(
                    bottom: 20.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: 10.0, sigmaY: 10.0), // Apply blur
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black
                                .withOpacity(0.5), // Slight color overlay
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(10.0),
                          height: 100.0,
                          width: 350.0,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(place_name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Ionicons.location_outline,
                                            size: 18.0, color: Colors.white),
                                        const SizedBox(width: 5.0),
                                        Text(place_location,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19.0,
                                                fontFamily: GoogleFonts.roboto()
                                                    .fontFamily)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(width: 4.0),
                                        Text('\$$place_price',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.w600,
                                                fontFamily:
                                                    GoogleFonts.montserrat()
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
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Text("Overview",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontFamily:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)
                                  .fontFamily))
                ]),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(49, 0, 0, 0),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 10.0, sigmaY: 10.0),
                                child: const Icon(
                                  Ionicons.time,
                                  color: Color.fromARGB(255, 73, 72, 72),
                                  weight: 20.0,
                                )),
                          )),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "0pen\n22/7",
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(204, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 0.0),
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(49, 0, 0, 0),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 10.0, sigmaY: 10.0),
                                child: const Icon(
                                  FluentIcons.weather_cloudy_20_filled,
                                  color: Color.fromARGB(255, 73, 72, 72),
                                  weight: 20.0,
                                )),
                          )),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "16℃",
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(204, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 0.0),
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(49, 0, 0, 0),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 10.0, sigmaY: 10.0),
                                child: const Icon(
                                  FluentIcons.star_20_filled,
                                  color: Color.fromARGB(255, 73, 72, 72),
                                  weight: 20.0,
                                )),
                          )),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          place_rating,
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(204, 0, 0, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Text(place_description,
                    style: GoogleFonts.comfortaa(
                      wordSpacing: 3.0,
                      fontSize: 20.0,
                      color: const Color.fromARGB(255, 51, 50, 50),
                      fontWeight: FontWeight.w600,
                    )),
              ),
              const SizedBox(
                height: 70.0,
              )
            ],
          ),
          Positioned(
            top: 40.0,
            left: 20.0,
            child: Material(
              color: const Color.fromRGBO(37, 150, 190, 1),
              shape: const CircleBorder(),
              elevation: 2.0,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Ionicons.arrow_back_circle_outline,
                  size: 30.0,
                  color: Colors.white,
                  weight: 900,
                ),
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0), // Adjust as needed
        child: ElevatedButton(
          onPressed: () {
            // Your onPressed logic
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(37, 150, 190, 1),
            iconColor: Colors.white,
            padding: const EdgeInsets.symmetric(
                horizontal: 24.0, vertical: 12.0), // Adjust size
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(FluentIcons.send_20_regular),
              SizedBox(width: 10.0),
              Text("Book Now",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
