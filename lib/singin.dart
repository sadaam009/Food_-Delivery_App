import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_order/sinuppage.dart';
import 'package:food_order/forgetpassword.dart';

class Singin extends StatelessWidget {
  const Singin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("SingIn")),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to Tamang Food Services",
                      style: GoogleFonts.poppins(
                          fontSize: 35, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      child: Text(
                        "Enter your Phone number or Email address for sign in. Enjoy your food ",
                        style: GoogleFonts.poppins(fontSize: 20),
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
                              "Email Address",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
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
                                  color: Colors.grey),
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
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return Forget_password();
                                    },
                                  ));
                                },
                                child: Container(
                                  child: Text(
                                    "Forget Password?",
                                    style: GoogleFonts.poppins(
                                        fontSize: 19,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
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
                                "SIGN IN",
                                style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Dont Have Account?",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return Sinuppage();
                                      },
                                    ));
                                  },
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        "Create New Account",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 248, 183, 78)),
                                      ),
                                    ),
                                  ),
                                )
                              ],
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
                                        fontSize: 25,
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
