import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_order/singin.dart';

class Sinuppage extends StatelessWidget {
  const Sinuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title: Center(child: Text("Create Account")),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Account",
                      style: GoogleFonts.poppins(
                          fontSize: 35, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text:
                                  'Enter your Name, Email and Password for sign up.',
                              style: TextStyle(fontSize: 20)),
                          TextSpan(
                            text: '  Already have account?',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                            recognizer: TapGestureRecognizer(),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // Wrapping this in a SingleChildScrollView
                    SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Full Name",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[400]),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Email Address",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[400]),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Password",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[400]),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  fillColor: Colors.grey),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            // Center(
                            //   child: GestureDetector(
                            //     onTap: () {
                            //       Navigator.push(context, MaterialPageRoute(
                            //         builder: (context) {
                            //           return Forget_password();
                            //         },
                            //       ));
                            //     },
                            //     child: Container(
                            //       child: Text(
                            //         "Forget Password?",
                            //         style: GoogleFonts.poppins(
                            //             fontSize: 19,
                            //             color: Colors.grey,
                            //             fontWeight: FontWeight.w600),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              height: 7,
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
                                "SIGN UP",
                                style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Text(
                                "By Signing up you agree to our Terms    \n         Conditions & Privacy Policy.",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[500]),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Or",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: 360,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color.fromARGB(255, 24, 118, 242),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Image.asset("lib/images/facebook.png"),
                            ),
                            Text(
                              "CONTECT WITH FACEBOOK",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: 360,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color.fromARGB(255, 81, 173, 248),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Image.asset("lib/images/google.png"),
                            ),
                            Text(
                              "CONTECT WITH FACEBOOK",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
