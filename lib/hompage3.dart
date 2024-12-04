import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hompage3 extends StatelessWidget {
  const Hompage3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 80),
          child: Column(
            children: [
              Row(
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
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  child: Image.asset("lib/images/intro2.png"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Free delivery offers",
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Free delivery for new customers via Apple Pay and others payment methods.",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 145, 145, 145)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
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
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
