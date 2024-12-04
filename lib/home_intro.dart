import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_intro extends StatelessWidget {
  const Home_intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 830,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Stack(
            children: [
              Positioned(
                right: 40,
                child: Container(
                  width: 500,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 254, 247, 237),
                      borderRadius: BorderRadius.circular(300)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 100,
                        left: 150,
                        child: Row(
                          children: [
                            Image.asset("lib/images/logo.png"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("    Tamang \n FoodService",
                                  style: GoogleFonts.poppins(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    top: 270,
                    left: 80,
                    child: Container(
                      child: Image.asset("lib/images/Illustration.png"),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Welcome",
                  style: GoogleFonts.poppins(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                      "It’s a pleasure to meet you. We are excited that you’re here so let’s get started!",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 360,
                  height: 65,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 183, 78),
                      borderRadius: BorderRadius.circular(14)),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
