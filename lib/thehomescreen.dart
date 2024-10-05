import 'package:education_app/homescreen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Thehomescreen extends StatefulWidget {
  const Thehomescreen({super.key});

  @override
  State<Thehomescreen> createState() => _ThehomescreenState();
}

class _ThehomescreenState extends State<Thehomescreen> {
  final TextEditingController searchboxfield = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                SizedBox(
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
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  controller: searchboxfield,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                  decoration: InputDecoration(
                      suffixIcon: Icon(FluentIcons.filter_12_regular),
                      hintText: "Search East Africa",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[500]!,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[500]!,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                ),
                SizedBox(
                  height: 70.0,
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
                SizedBox(
                  height: 40.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Most Viewed",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(37, 150, 190, 1),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Latest",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(37, 149, 190, 0.244),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Nearby",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(37, 149, 190, 0.244),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Best Reviews",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(37, 149, 190, 0.244),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView()
              ],
            ),
          )),
    );
  }
}
