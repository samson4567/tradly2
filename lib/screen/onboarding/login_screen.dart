import 'package:flutter/material.dart';
import 'package:tradly2/utilis/app_color.dart';
import 'package:tradly2/utilis/dimention.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPRYCOLOUR,
      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 80),
        child: Column(
          children: const [
            Text(
              "welcome to tradly",
              style: TextStyle(fontSize: 35, color: kWHTCOLOUR),
            ),
            SizedBox(height: 40),
            Text(
              "login to your account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
