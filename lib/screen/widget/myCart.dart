import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/add_adress.dart';
import 'package:tradly2/screen/onboarding/onboarding_2.dart';
import 'package:tradly2/screen/widget/payment_option.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPRYCOLOUR,
        title: const Text("My Cart",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: kFlutsi,
      body: Column(
        children: [
          Container(
            height: getScreenHeight(70),
            width: getScreenWidth(400),
            color: kWHTCOLOUR,
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Adress()));
                },
                child: const Text(
                  "+  Add New Address",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(height: getScreenWidth(20)),
          Container(
            decoration: const BoxDecoration(
              color: kWHTCOLOUR,
            ),
            height: getScreenHeight(140),
            width: getScreenWidth(400),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(10)),
                  child: Image.asset(
                    "assets/images/coke3.png",
                    height: getScreenHeight(100),
                    width: getScreenWidth(100),
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(40)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Coca Cola",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: getScreenHeight(10),
                      ),
                      Row(
                        children: [
                          const Text(
                            "25",
                            style: TextStyle(
                                fontSize: 20,
                                color: kPRYCOLOUR,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: getScreenWidth(10),
                          ),
                          const Text(
                            "50%",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: getScreenWidth(10),
                          ),
                          const Text(
                            "50%0ff",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getScreenHeight(10),
                      ),
                      Row(
                        children: const [
                          Text("Qty : 1"),
                          Icon(Icons.arrow_downward_outlined)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(40),
            width: getScreenWidth(400),
            color: kWHTCOLOUR,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Remove",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: getScreenHeight(40),
          ),
          Container(
            height: getScreenHeight(100),
            width: getScreenWidth(400),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Price Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("price(1 item)"),
                      Text("25"),
                    ],
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(15),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Delivery fee"),
                      Text("info"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(3),
          ),
          Container(
            height: getScreenHeight(50),
            width: getScreenWidth(400),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "25",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(120),
          ),
          Padding(
            padding: EdgeInsets.only(top: getScreenHeight(70)),
            child: Container(
              height: getScreenHeight(50),
              width: getScreenWidth(300),
              color: kWHTCOLOUR,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Payment_Option()));
                },
                child: Container(
                  height: getScreenHeight(40),
                  width: getScreenWidth(200),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      shape: BoxShape.rectangle,
                      color: kPRYCOLOUR),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "continue to payment",
                        style: TextStyle(fontSize: 25, color: kWHTCOLOUR),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
