import 'package:education_app/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            IgnorePointer(
              child: ClipPath(
                clipper: CurvedBottomClipper(),
                child: Container(
                  height: 300, // Adjust the height to your preference
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        94, 68, 137, 255), // Adjust color as needed
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                  child: Text(
                    "Join the wide East African",
                    style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                  child: Text(
                    "Community digitally.",
                    style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 160,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.white, // Button background color
                              foregroundColor: Color.fromRGBO(
                                  37, 150, 190, 1), // Text and icon color
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 12.0),
                              side: const BorderSide(
                                color: Color.fromRGBO(
                                    37, 150, 190, 1), // Border color
                                width: 1.0, // Border width
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(Ionicons.logo_microsoft),
                            label: Text('Join using Microsoft')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 160,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.white, // Button background color
                              foregroundColor:
                                  Colors.black, // Text and icon color
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 12.0),
                              side: const BorderSide(
                                color: Colors.black, // Border color
                                width: 1.0, // Border width
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(Ionicons.logo_google),
                            label: Text('Join using Google')),
                      ),
                    ),
                  ],
                ),
                // Email TextField
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Ionicons.mail_outline),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors
                              .black, // Change the color to your preference
                          width: 2.0, // Width of the border when focused
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                // Password TextField
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 40.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true, // Hides the password input
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Ionicons.lock_closed_outline),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors
                              .black, // Change the color to your preference
                          width: 2.0, // Width of the border when focused
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(37, 150, 190, 1), // Button background color
                        foregroundColor: Colors.white, // Text and icon color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homescreen(),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text('LOGIN',
                          style: TextStyle(
                              fontSize: 20.0, // Text size
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 100); // Start the path at bottom left
    var firstControlPoint =
        Offset(size.width / 6, size.height / 2); // Control point for the curve
    var firstEndPoint =
        Offset(size.width, size.height - 100); // End point of the curve
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, 0.0); // Draw straight line to the top-right corner
    path.close(); // Close the path to complete the shape

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
