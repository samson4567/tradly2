import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/add_card.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Payment_Option extends StatefulWidget {
  const Payment_Option({super.key});

  @override
  State<Payment_Option> createState() => _Payment_OptionState();
}

class _Payment_OptionState extends State<Payment_Option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlutsi,
      body: ListView(
        children: [
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
                    child: const Padding(
                      padding: EdgeInsets.only(
                        right: 50,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: kWHTCOLOUR,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Payment Option",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kWHTCOLOUR),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(30),
          ),
          Container(
            height: getScreenHeight(250),
            width: getScreenWidth(400),
            color: kWHTCOLOUR,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: getScreenHeight(30)),
                  child: Container(
                    height: getScreenHeight(150),
                    width: getScreenWidth(230),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: getScreenHeight(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Add_Card()));
                            },
                            child: const Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: kPRYCOLOUR,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Text(
                            "Add Payment method",
                            style: TextStyle(
                                fontSize: 17,
                                color: kPRYCOLOUR,
                                fontWeight: FontWeight.w100),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(10),
          ),
          Container(
            height: getScreenHeight(200),
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
                    "Delivery Address",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  "_______________________________________",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(20)),
                  child: const Text(
                    "Netbanking",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const Text(
                  "_______________________________________",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(20)),
                  child: const Text(
                    "Cash On Delivery",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kBLKCOLOUR),
                  ),
                ),
                const Text(
                  "_______________________________________",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: getScreenHeight(7),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(20)),
                  child: const Text(
                    "Wallet",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(20),
          ),
          Container(
            height: getScreenHeight(80),
            width: getScreenWidth(120),
            color: kWHTCOLOUR,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: getScreenWidth(20), top: getScreenHeight(15)),
                      child: const Text(
                        "Deliver to Tradly Team,75119",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: getScreenWidth(60)),
                      child: const Text(
                        "Kauulpar, malaysia",
                        style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(10)),
                  child: Container(
                    height: getScreenHeight(25),
                    width: getScreenWidth(80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kPRYCOLOUR),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "change",
                          style: TextStyle(fontSize: 13, color: kWHTCOLOUR),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(20),
          ),
          Container(
            height: getScreenHeight(100),
            width: getScreenWidth(120),
            color: kWHTCOLOUR,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: getScreenWidth(60), top: getScreenHeight(15)),
                      child: const Text(
                        "Price Details",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: getScreenWidth(95)),
                      child: const Text(
                        "price(items)",
                        style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Padding(
                  padding: EdgeInsets.only(right: getScreenWidth(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "25",
                        style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getScreenWidth(60), right: getScreenWidth(60)),
            child: Container(
              height: getScreenHeight(40),
              width: getScreenWidth(50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all()),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Checkout",
                    style: TextStyle(fontSize: 20, color: kWHTCOLOUR),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
