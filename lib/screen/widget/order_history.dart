import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tradly2/screen/widget/browse.dart';
import 'package:tradly2/screen/widget/home_dashboard.dart';
import 'package:tradly2/screen/widget/myCart.dart';
import 'package:tradly2/screen/widget/order_details.dart';
import 'package:tradly2/screen/widget/product_details.dart';
import 'package:tradly2/screen/widget/profile.dart';
import 'package:tradly2/screen/widget/store.dart';
import 'package:tradly2/screen/widget/wishlist.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

import '../../utilis/App_widget/app_color.dart';

class Order_History extends StatefulWidget {
  const Order_History({super.key});

  @override
  State<Order_History> createState() => _Order_HistoryState();
}

class _Order_HistoryState extends State<Order_History> {
  @override
  Widget build(BuildContext context) {
    int currentIndex;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPRYCOLOUR,
        titleSpacing: getScreenHeight(4),
        title: const Text(
          "Order History",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Wishlist()));
              },
              icon: Icon(Icons.heart_broken)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyCart()));
              },
              icon: Icon(Icons.shop_two))
        ],
      ),
      backgroundColor: kFlut,
      body: Column(
        children: [
          Container(
            height: getScreenHeight(80),
            width: getScreenWidth(390),
            child: Padding(
              padding: EdgeInsets.only(left: getScreenWidth(20)),
              child: Row(
                children: [
                  const Text(
                    "Transactions",
                    style: TextStyle(
                        fontSize: 25,
                        color: kBLKCOLOUR,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: getScreenWidth(20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: getScreenHeight(25),
                      width: getScreenWidth(90),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          color: kFlutsi2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Browse()));
                            },
                            child: const Text(
                              "Januari 2020",
                              style: TextStyle(fontSize: 15, color: kPRYCOLOUR),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
            height: getScreenHeight(70),
            width: getScreenWidth(380),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(10)),
                  child: Image.asset("assets/images/coke.png"),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(20)),
                  child: Column(
                    children: [
                      const Text(
                        "Coca Cola",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "25",
                            style: TextStyle(
                                fontSize: 15,
                                color: kPRYCOLOUR,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: getScreenWidth(10),
                          ),
                          const Text(
                            "50%0ff",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(150),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Order_Details()));
                  },
                  child: Container(
                    height: getScreenHeight(20),
                    width: getScreenWidth(90),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                        color: kPRYCOLOUR),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Delivered",
                          style: TextStyle(fontSize: 17, color: kWHTCOLOUR),
                        ),
                      ],
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
            decoration: BoxDecoration(
                color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
            height: getScreenHeight(70),
            width: getScreenWidth(380),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(10)),
                  child: Image.asset("assets/images/coke.png"),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(20)),
                  child: Column(
                    children: [
                      const Text(
                        "Coca Cola",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "25",
                            style: TextStyle(
                                fontSize: 15,
                                color: kPRYCOLOUR,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: getScreenWidth(10),
                          ),
                          const Text(
                            "50%0ff",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(130),
                ),
                Container(
                  height: getScreenHeight(25),
                  width: getScreenWidth(110),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(),
                      color: kWHTCOLOUR),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Order placed",
                        style: TextStyle(fontSize: 17, color: kPRYCOLOUR),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(10),
          ),
          Container(
            decoration: BoxDecoration(
                color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
            height: getScreenHeight(70),
            width: getScreenWidth(380),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(10)),
                  child: Image.asset("assets/images/coke.png"),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(20)),
                  child: Column(
                    children: [
                      const Text(
                        "Coca Cola",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "25",
                            style: TextStyle(
                                fontSize: 15,
                                color: kPRYCOLOUR,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: getScreenWidth(10),
                          ),
                          const Text(
                            "50%0ff",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(70),
                ),
                Container(
                  height: getScreenHeight(25),
                  width: getScreenWidth(170),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(),
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "payment confirmed",
                        style: TextStyle(fontSize: 17, color: kPRYCOLOUR),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(10),
          ),
          Container(
            decoration: BoxDecoration(
                color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
            height: getScreenHeight(70),
            width: getScreenWidth(380),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(10)),
                  child: Image.asset("assets/images/coke.png"),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(20)),
                  child: Column(
                    children: [
                      const Text(
                        "Coca Cola",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "25",
                            style: TextStyle(
                                fontSize: 15,
                                color: kPRYCOLOUR,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: getScreenWidth(10),
                          ),
                          const Text(
                            "50%0ff",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(140),
                ),
                Container(
                  height: getScreenHeight(20),
                  width: getScreenWidth(90),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(),
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Processed",
                        style: TextStyle(fontSize: 15, color: kPRYCOLOUR),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 10,
          iconSize: 30,
          unselectedItemColor: kPRYCOLOUR,
          selectedItemColor: kPRYCOLOUR,
          currentIndex: currentIndex = 0,
          onTap: (index) => setState(() => currentIndex = index),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_dashboard())),
                  child: const Icon(Icons.home)),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Browse())),
                  child: const Icon(Icons.search)),
              label: "Browse",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Order_History())),
                  child: const Icon(Icons.add_chart)),
              label: "Order history",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Store())),
                  child: const Icon(Icons.store)),
              label: "store",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile())),
                  child: const Icon(Icons.person)),
              label: "profile",
            )
          ]),
    );
  }
}
