import 'package:flutter/material.dart';
import 'package:tradly2/screen/onboarding/login_screen.dart';
import 'package:tradly2/utilis/app_color.dart';
import 'package:tradly2/utilis/dimention.dart';

class Onboarding_3 extends StatefulWidget {
  const Onboarding_3({super.key});

  @override
  State<Onboarding_3> createState() => _Onboarding_3State();
}

class _Onboarding_3State extends State<Onboarding_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: kPRYCOLOUR,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: getScreenHeight(
                350,
              ),
              width: getScreenHeight(280),
              color: kWHTCOLOUR,
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Image.asset("assets/images/icon5.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              height: getScreenHeight(
                350,
              ),
              width: getScreenHeight(380),
              color: kWHTCOLOUR,
           child:  GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Login_Screen ()));
              },
              child: Image.asset("assets/images/next.png"))),
          ),
        ],
      ),);
  }
}