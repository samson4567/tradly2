import 'package:flutter/material.dart';
import 'package:tradly2/screen/onboarding/onboarding_2.dart';
import 'package:tradly2/utilis/app_color.dart';
import 'package:tradly2/utilis/dimention.dart';

class Onboarding_1 extends StatelessWidget {
  const Onboarding_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: getScreenHeight(307),
              width: getScreenWidth(320),
              color: kWHTCOLOUR,
              child: Image.asset("assets/images/icon.png"),
            ),
          ),
          Container(
            height: getScreenHeight(350),
            width: getScreenWidth(475),
            color: kWHTCOLOUR,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: Image.asset("assets/images/Empowering.png"),
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Onboarding_2()));
              },
              child: Image.asset("assets/images/next.png"))
        ],
      ),
    );
  }
}
