import 'package:flutter/material.dart';
import 'intro_page.dart';
import 'home_intro.dart';
import 'homepage2.dart';
import 'hompage3.dart';
import 'homepage4.dart';
import 'singin.dart';
import 'forgetpassword.dart';
import 'reset_password_page.dart';
import 'Screens/screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Screen(),
      ),
    ),
  );
}
