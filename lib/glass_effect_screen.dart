import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterGlassEffect extends StatefulWidget {
  const FlutterGlassEffect({Key? key}) : super(key: key);

  @override
  State<FlutterGlassEffect> createState() => _FlutterGlassEffectState();
}

class _FlutterGlassEffectState extends State<FlutterGlassEffect> {
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Color(0x0ff0e1720),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/ktech.jpg"), // Replace with your image asset path
            fit: BoxFit
                .cover, // You can specify how the image should fit the container
          ),
        ),
        child: ListView(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 100, left: 40, right: 40),
                child: Text(
                  "Welcome to Flutter Designs",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 30,
                    height: 1,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Container(
                margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
                child: Text(
                  "Flutter is a popular open-source framework for building natively compiled applications for mobile, web, and desktop from a single codebase. It offers a rich set of widgets and tools that enable developers to create stunning and responsive user interfaces.",
                  style: GoogleFonts.montserrat(
                    color: Colors.grey.shade300.withOpacity(0.5),
                    fontSize: 15,
                  ),
                )),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10,
                        sigmaY: 10,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height: 210,
                        width: screenWidth,
                        color: Colors.grey.shade300.withOpacity(0.2),
                        child: Stack(
                          children: [
                            Text(
                              "BECOME A MEMBER",
                              style: GoogleFonts.montserrat(
                                color: Colors.grey.shade300.withOpacity(0.5),
                                letterSpacing: 1.5,
                              ),
                            ),
                           
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.person,
                                color: Colors.grey.shade300.withOpacity(0.5),
                                size: 30,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  style: GoogleFonts.montserrat(
                                    color: Colors.grey
                                        .shade300, // Set the desired text color
                                    fontSize: 15,
                                    height: 1,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'John Michal',
                                    hintStyle: GoogleFonts.montserrat(
                                      color:
                                          Colors.grey.shade300.withOpacity(0.5),
                                      letterSpacing: 1.5,
                                    ), // Color of the label text
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade300
                                            .withOpacity(0.5),
                                      ), // Color of the underline
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade300
                                            .withOpacity(0.5),
                                      ), // Color of the underline when focused
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  style: GoogleFonts.montserrat(
                                    color: Colors.grey
                                        .shade300, // Set the desired text color
                                    fontSize: 15,
                                    height: 1,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'johnmichal@gmail.com',
                                    hintStyle: GoogleFonts.montserrat(
                                      color:
                                          Colors.grey.shade300.withOpacity(0.5),
                                      letterSpacing: 1.5,
                                    ), // Color of the label text
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade300
                                            .withOpacity(0.5),
                                      ), // Color of the underline
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade300
                                            .withOpacity(0.5),
                                      ), // Color of the underline when focused
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Click to continue",
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Colors.grey.shade300.withOpacity(0.5),
                                      fontSize: 15,
                                      height: 1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt_outlined,
                                    color:
                                        Colors.grey.shade300.withOpacity(0.5),
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          
          ],
        ),
      ),
    );
  }

}
