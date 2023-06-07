import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';

import '../../utilis/App_widget/dimention.dart';

class Add_Card extends StatefulWidget {
  const Add_Card({super.key});

  @override
  State<Add_Card> createState() => _Add_CardState();
}

class _Add_CardState extends State<Add_Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFluts,
      body: ListView(
        children: [
          Stack(children: [
            Container(
              height: getScreenHeight(120),
              width: getScreenWidth(400),
              color: kPRYCOLOUR,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        color: kWHTCOLOUR,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(70)),
                    child: const Text(
                      "Add Card",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: kWHTCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: getScreenHeight(100), left: getScreenWidth(40)),
              child: Container(
                height: getScreenHeight(186),
                width: getScreenWidth(300),
                color: kFluts,
                child: Image.asset("assets/images/visa.png"),
              ),
            )
          ]),
          SizedBox(
            height: getScreenHeight(60),
          ),
          Container(
            height: getScreenHeight(450),
            width: getScreenWidth(400),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getScreenWidth(16),
                    top: getScreenHeight(20),
                  ),
                  child: const Text(
                    "Card Number",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: kPRYCOLOUR),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(15)),
                  child: const Text(
                    "4000 1234 1234 9010",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: kBLKCOLOUR),
                  ),
                ),
                const Text(
                  "_______________________________________",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(20)),
                  child: const Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: kPRYCOLOUR),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(20)),
                  child: const Text(
                    "Tradly",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: kBLKCOLOUR),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: getScreenWidth(20)),
                  child: const Text(
                    "___________________________________ ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(20)),
                  child: const Text(
                    "Expires Dates",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: kPRYCOLOUR),
                  ),
                ),SizedBox(height: getScreenHeight(20),),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(20)),
                  child: const Text(
                    "Tradly",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: kBLKCOLOUR),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: getScreenWidth(20)),
                  child: const Text(
                    "_________________________",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                  ),
                ),
            Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(100), left: getScreenWidth(50)),
                  child: Container(
                    height: getScreenHeight(40),
                    width: getScreenWidth(270),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                        color: kPRYCOLOUR),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Add Credit Card",
                          style: TextStyle(fontSize: 17, color: kWHTCOLOUR),
                        ),
                      ],
                    ),
                  ),
                ),  ],
            ),
          ),
        ],
      ),
    );
  }
}
