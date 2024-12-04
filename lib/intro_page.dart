import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
            ),
            Stack(
              children: [
                Positioned(
                  right: 40,
                  top: -50,
                  child: Container(
                    width: 500,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(108, 255, 229, 188),
                        borderRadius: BorderRadius.circular(300)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: Row(
                        children: [
                          Image.asset("lib/images/logo.png"),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Tamang \n FoodService",
                              style: GoogleFonts.poppins(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Stack(
          children: [
            Positioned(
              top: 300,
              left: 100,
              child: Container(
                child: Image.asset("lib/images/Illustration.png"),
              ),
            )
          ],
        ),
        Positioned(
          bottom: 150,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Container(
              child: Column(
                children: [
                  Text("Welcome",
                      style: GoogleFonts.poppins(
                          fontSize: 32, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "It’s a pleasure to meet you. We are excited that you’re here so let’s get started!",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                    ),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 27,
          left: 27,
          child: Container(
            alignment: Alignment.center,
            width: 360,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Color.fromARGB(255, 248, 183, 78),
            ),
            child: Text(
              "Get Started",
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
