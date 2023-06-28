import 'package:flutter/material.dart';
import 'package:tradly2/screen/onboarding/onboarding_2.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Onboarding_1 extends StatelessWidget {
  const Onboarding_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  color: kPRYCOLOUR,
                  height: getScreenHeight(418),
                  width: getScreenWidth(400),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Column(
                        children: [
                          Container(
                            height: getScreenHeight(250),
                            width: getScreenWidth(300),
                            color: kWHTCOLOUR,
                            child: Image.asset("assets/images/icon.png"),
                          ),
                        ],
                      ),
                    ),
                  )),
              Container(
                color: kWHTCOLOUR,
                height: getScreenHeight(400),
                width: getScreenWidth(400),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 200),
                      child: Text(
                        "Empwering Artsian, ",
                        style: TextStyle(fontSize: 28, color: kPRYCOLOUR),
                      ),
                    ),
                    const Text(
                      "Farmers and Micro Bussiness  ",
                      style: TextStyle(fontSize: 26, color: kPRYCOLOUR),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Onboarding_2()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Container(
                          height: getScreenHeight(40),
                          width: getScreenWidth(250),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              shape: BoxShape.rectangle,
                              color: kPRYCOLOUR),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Next",
                                style:
                                    TextStyle(fontSize: 25, color: kWHTCOLOUR),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
