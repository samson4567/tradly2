import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/browse.dart';
import 'package:tradly2/screen/widget/create_store.dart';
import 'package:tradly2/screen/widget/order_history.dart';
import 'package:tradly2/screen/widget/product_details.dart';
import 'package:tradly2/screen/widget/profile.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

import '../../utilis/App_widget/app_color.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 1;
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
          IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shop_two))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: getScreenWidth(
                  50,
                ),
                top: getScreenHeight(100)),
            child: Image.asset(
              "assets/images/poro.png",
              height: getScreenHeight(100),
            ),
          ),
          SizedBox(
            height: getScreenHeight(70),
          ),
          Padding(
            padding: EdgeInsets.only(left: getScreenWidth(60)),
            child: const Text(
              "You Don't have a store",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: getScreenHeight(50),
          ),
          Padding(
            padding: EdgeInsets.only(left: getScreenWidth(70)),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => My_Store())),
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
                      "Create",
                      style: TextStyle(fontSize: 17, color: kWHTCOLOUR),
                    ),
                  ],
                ),
              ),
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
                          builder: (context) => Product_details())),
                  child: const Icon(Icons.home)),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Browse())),
                  child: const Icon(Icons.browse_gallery_outlined)),
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
