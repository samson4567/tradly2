import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/myCart.dart';
import 'package:tradly2/screen/widget/store2.dart';
import 'package:tradly2/screen/widget/wishlist.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class My_Store extends StatefulWidget {
  const My_Store({super.key});

  @override
  State<My_Store> createState() => _My_StoreState();
}

class _My_StoreState extends State<My_Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPRYCOLOUR,
          titleSpacing: getScreenHeight(4),
          title: const Text(
            "My Store",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Wishlist()));
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
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.only(
                left: getScreenWidth(
                  10,
                ),
                top: getScreenHeight(30)),
            child: Image.asset(
              "assets/images/poro.png",
              height: getScreenHeight(100),
            ),
          ),
          SizedBox(
            height: getScreenHeight(40),
          ),
          Padding(
            padding: EdgeInsets.only(left: getScreenWidth(50)),
            child: const Text(
              "This information is used to setup ",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getScreenWidth(130)),
            child: const Text(
              "Your Shop",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: getScreenHeight(20),
          ),
          Container(
              decoration: BoxDecoration(
                  color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
              height: getScreenHeight(90),
              width: getScreenWidth(380),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getScreenWidth(15), top: getScreenHeight(15)),
                    child: const Text(
                      "Store Name",
                      style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(10)),
                    child: const Text("Tradly Store",
                        style: TextStyle(fontSize: 25)),
                  ),
                  SizedBox(
                    height: getScreenHeight(15),
                  )
                ],
              )),
          Container(
              decoration: BoxDecoration(
                  color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
              height: getScreenHeight(90),
              width: getScreenWidth(380),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getScreenWidth(15), top: getScreenHeight(15)),
                    child: const Text(
                      "Store Web Address",
                      style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(10)),
                    child: const Text("tradly.app",
                        style: TextStyle(fontSize: 25)),
                  ),
                ],
              )),
          Container(
              decoration: BoxDecoration(
                  color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
              height: getScreenHeight(90),
              width: getScreenWidth(380),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getScreenWidth(15), top: getScreenHeight(15)),
                    child: const Text(
                      "Store Description",
                      style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(10)),
                    child: const Text("Sell Groceries and home care product ",
                        style: TextStyle(fontSize: 23)),
                  ),
                ],
              )),
          Container(
              decoration: BoxDecoration(
                  color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
              height: getScreenHeight(90),
              width: getScreenWidth(380),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getScreenWidth(15), top: getScreenHeight(15)),
                    child: const Text(
                      "Store Type",
                      style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(10)),
                    child: const Text("Groceries home",
                        style: TextStyle(fontSize: 25)),
                  ),
                ],
              )),
          Container(
              decoration: BoxDecoration(
                  color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
              height: getScreenHeight(90),
              width: getScreenWidth(380),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getScreenWidth(15), top: getScreenHeight(15)),
                    child: const Text(
                      "Address",
                      style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(10)),
                    child: const Text(" Cresent Ave, Woodbury",
                        style: TextStyle(fontSize: 25)),
                  ),
                ],
              )),
          Container(
              decoration: BoxDecoration(
                  color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
              height: getScreenHeight(90),
              width: getScreenWidth(380),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getScreenWidth(15), top: getScreenHeight(15)),
                    child: const Text(
                      "City",
                      style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(10)),
                    child: const Text("125, Cresent Ave, Woodbury",
                        style: TextStyle(fontSize: 25)),
                  ),
                ],
              )),
          Container(
              decoration: BoxDecoration(
                  color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
              height: getScreenHeight(90),
              width: getScreenWidth(380),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getScreenWidth(15), top: getScreenHeight(15)),
                    child: const Text(
                      "Country",
                      style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(10)),
                    child: const Text("USA", style: TextStyle(fontSize: 25)),
                  ),
                ],
              )),
          Container(
              decoration: BoxDecoration(
                  color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
              height: getScreenHeight(90),
              width: getScreenWidth(380),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getScreenWidth(15), top: getScreenHeight(15)),
                    child: const Text(
                      "Courier Name",
                      style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(10)),
                    child:
                        const Text("Blue Dart", style: TextStyle(fontSize: 25)),
                  ),
                ],
              )),
          Container(
              decoration: BoxDecoration(
                  color: kWHTCOLOUR, borderRadius: BorderRadius.circular(10)),
              height: getScreenHeight(90),
              width: getScreenWidth(380),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getScreenWidth(15), top: getScreenHeight(15)),
                    child: const Text(
                      "Tagline",
                      style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getScreenWidth(10)),
                    child: Container(
                      height: getScreenHeight(25),
                      width: getScreenWidth(110),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(),
                          color: kFluts),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Order placed",
                            style: TextStyle(fontSize: 17, color: kBLKCOLOUR),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          GestureDetector(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Store2()));
          },
            child: Padding(
              padding: EdgeInsets.only(
                  right: getScreenWidth(30), left: getScreenWidth(30)),
              child: Container(
                height: getScreenHeight(50),
                width: getScreenWidth(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(),
                    color: kPRYCOLOUR),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Create",
                      style: TextStyle(fontSize: 20, color: kWHTCOLOUR),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
