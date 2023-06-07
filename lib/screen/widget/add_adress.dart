import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/myCart.dart';
import 'package:tradly2/screen/onboarding/onboarding_2.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Adress extends StatefulWidget {
  const Adress({super.key});

  @override
  State<Adress> createState() => _AdressState();
}

class _AdressState extends State<Adress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPRYCOLOUR,
        title: const Text("Add a new address",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Container(
            height: getScreenHeight(60),
            width: getScreenWidth(400),
            color: kWHTCOLOUR,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/location.png"),
                      const Text(
                        "Use current location",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getScreenHeight(90),
            width: getScreenWidth(400),
            color: kFlutsi,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: Text("Name"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: const Text(
                    "Tradly team",
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(90),
            width: getScreenWidth(400),
            color: kFlutsi,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: Text("Phone"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: const Text(
                    "+693848492",
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(90),
            width: getScreenWidth(400),
            color: kFlutsi,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: Text("street address"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: const Text(
                    "Kalapurrr Maleysia",
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(90),
            width: getScreenWidth(400),
            color: kFlutsi,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: Text("city"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: const Text(
                    "Kalapurr",
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(90),
            width: getScreenWidth(400),
            color: kFlutsi,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: Text("state"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: const Text(
                    "Malaysia",
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(90),
            width: getScreenWidth(400),
            color: kFlutsi,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: Text("ZipCode"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(15), top: getScreenHeight(20)),
                  child: const Text(
                    "72877",
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(20),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyCart()));
            },
            child: Padding(
              padding: EdgeInsets.only(top: getScreenHeight(20)),
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
                      "Save",
                      style: TextStyle(fontSize: 25, color: kWHTCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
