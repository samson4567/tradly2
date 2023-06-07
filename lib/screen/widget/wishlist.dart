import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

import 'myCart.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPRYCOLOUR,
        title: const Text("Wishlist",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: kFlutsi,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: getScreenWidth(20), top: getScreenHeight(30)),
            child: Row(
              children: [
                Container(
                  height: getScreenHeight(200),
                  width: getScreenWidth(160),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kWHTCOLOUR),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: getScreenHeight(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/apple1.png",
                        ),
                        SizedBox(
                          height: getScreenHeight(9),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: getScreenWidth(70)),
                          child: Text("Apple"),
                        ),
                        SizedBox(
                          height: getScreenHeight(10),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getScreenWidth(26)),
                          child: Row(
                            children: [
                              Container(
                                height: getScreenHeight(20),
                                width: getScreenWidth(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    shape: BoxShape.rectangle,
                                    color: kPRYCOLOUR),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "T",
                                      style: TextStyle(
                                          fontSize: 17, color: kWHTCOLOUR),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: getScreenWidth(10),
                              ),
                              const Text("Tradly"),
                              SizedBox(
                                width: getScreenWidth(40),
                              ),
                              Text("25")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Container(
                  height: getScreenHeight(200),
                  width: getScreenWidth(160),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kWHTCOLOUR),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: getScreenHeight(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/orange.png",
                        ),
                        SizedBox(
                          height: getScreenHeight(9),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: getScreenWidth(70)),
                          child: Text("Orange"),
                        ),
                        SizedBox(
                          height: getScreenHeight(10),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getScreenWidth(26)),
                          child: Row(
                            children: [
                              Container(
                                height: getScreenHeight(20),
                                width: getScreenWidth(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    shape: BoxShape.rectangle,
                                    color: kPRYCOLOUR),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "T",
                                      style: TextStyle(
                                          fontSize: 17, color: kWHTCOLOUR),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: getScreenWidth(10),
                              ),
                              const Text("Tradly"),
                              SizedBox(
                                width: getScreenWidth(40),
                              ),
                              Text("25")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(30),
          ),
          Padding(
            padding: EdgeInsets.only(left: getScreenWidth(20)),
            child: Row(
              children: [
                Container(
                  height: getScreenHeight(200),
                  width: getScreenWidth(160),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kWHTCOLOUR),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: getScreenHeight(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/cream2.png",
                        ),
                        SizedBox(
                          height: getScreenHeight(9),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: getScreenWidth(70)),
                          child: Text("Moisturi"),
                        ),
                        SizedBox(
                          height: getScreenHeight(10),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getScreenWidth(26)),
                          child: Row(
                            children: [
                              Container(
                                height: getScreenHeight(20),
                                width: getScreenWidth(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    shape: BoxShape.rectangle,
                                    color: kPRYCOLOUR),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "T",
                                      style: TextStyle(
                                          fontSize: 17, color: kWHTCOLOUR),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: getScreenWidth(10),
                              ),
                              const Text("Tradly"),
                              SizedBox(
                                width: getScreenWidth(40),
                              ),
                              Text("25")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Container(
                  height: getScreenHeight(200),
                  width: getScreenWidth(160),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kWHTCOLOUR),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: getScreenHeight(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/meat.png",
                        ),
                        SizedBox(
                          height: getScreenHeight(9),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: getScreenWidth(70)),
                          child: Text("Bocrolli"),
                        ),
                        SizedBox(
                          height: getScreenHeight(10),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getScreenWidth(26)),
                          child: Row(
                            children: [
                              Container(
                                height: getScreenHeight(20),
                                width: getScreenWidth(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    shape: BoxShape.rectangle,
                                    color: kPRYCOLOUR),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "T",
                                      style: TextStyle(
                                          fontSize: 17, color: kWHTCOLOUR),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: getScreenWidth(10),
                              ),
                              const Text("Tradly"),
                              SizedBox(
                                width: getScreenWidth(40),
                              ),
                              Text("25")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
