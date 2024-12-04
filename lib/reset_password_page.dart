import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_order/singin.dart';

class Reset_page extends StatelessWidget {
  const Reset_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            "Forget Password",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Forget Password",
                      style: GoogleFonts.poppins(
                          fontSize: 35, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "We have sent a instructions email to  ",
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          " Sadaam@gmail.com. ",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 160, 155, 155)),
                        ),
                        Text(
                          "Having Problem? ",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Color.fromARGB(255, 238, 167, 52)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Singin();
                                },
                              ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 360,
                              height: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Color.fromARGB(255, 248, 183, 78),
                              ),
                              child: Text(
                                "SEND AGAIN",
                                style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("lib/images/Open.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
