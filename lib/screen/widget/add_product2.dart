import 'package:flutter/material.dart';
import 'package:tradly2/model/mainpage.dart';
import 'package:tradly2/screen/widget/add_product.dart';
import 'package:tradly2/screen/widget/browse.dart';
import 'package:tradly2/screen/widget/home_dashboard.dart';
import 'package:tradly2/screen/widget/myCart.dart';
import 'package:tradly2/screen/widget/order_history.dart';
import 'package:tradly2/screen/widget/profile.dart';
import 'package:tradly2/screen/widget/store_ptofile.dart';
import 'package:tradly2/screen/widget/wishlist.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';

import '../../utilis/App_widget/dimention.dart';

class Add_Product2 extends StatefulWidget {
  const Add_Product2({super.key});

  @override
  State<Add_Product2> createState() => _Add_Product2State();
}

class _Add_Product2State extends State<Add_Product2> {
  @override
  Widget build(BuildContext context) {
    int currentIndex;
    return Scaffold(
      backgroundColor: kFlutsi,
      body: Column(
        children: [
          Container(
            height: getScreenHeight(120),
            width: getScreenWidth(400),
            color: kPRYCOLOUR,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "My Store",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kWHTCOLOUR),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(100)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Wishlist()));
                      },
                      icon: const Icon(
                        Icons.heart_broken,
                        color: kWHTCOLOUR,
                      )),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyCart()));
                    },
                    icon: const Icon(
                      Icons.shop_two,
                      color: kWHTCOLOUR,
                    ))
              ],
            ),
          ),
          Container(
            height: getScreenHeight(200),
            width: getScreenWidth(400),
            color: kWHTCOLOUR,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(30)),
                  child: Container(
                    height: getScreenHeight(50),
                    width: getScreenWidth(50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        shape: BoxShape.rectangle,
                        color: kPRYCOLOUR),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "T",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: kWHTCOLOUR,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(20),
                ),
                const Text(
                  "Trdaly Store",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: getScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getScreenHeight(25),
                      width: getScreenWidth(120),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all()),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Edit Store",
                            style: TextStyle(fontSize: 13, color: kBLKCOLOUR),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getScreenWidth(20),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Store_Profile())),
                      child: Container(
                        height: getScreenHeight(25),
                        width: getScreenWidth(120),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kPRYCOLOUR),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "view store",
                              style: TextStyle(fontSize: 13, color: kWHTCOLOUR),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(30),
            width: getScreenWidth(400),
            color: kWHTCOLOUR,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Remove Store",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: getScreenWidth(5),
                right: getScreenWidth(20),
                left: getScreenWidth(20),
                top: getScreenHeight(30)),
            child: TextFormField(
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: kWHTCOLOUR)),
              labelText: "Search Product ",
              labelStyle: const TextStyle(color: kWHTCOLOUR),
              prefixIcon: const Icon(Icons.verified_outlined),
              prefixIconColor: kWHTCOLOUR,
            )),
          ),
          SizedBox(
            height: getScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.only(left: getScreenWidth(20)),
            child: Row(
              children: const [
                Text(
                  "Product",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Contax(
                  imagePath: 'assets/images/meat.png',
                  productName: 'Brocolli',
                  supplierName: 'Tradly',
                  mainPrice: '\$25'),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Add_Product()));
                },
                child: Container(
                  height: getScreenHeight(200),
                  width: getScreenWidth(160),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: getScreenHeight(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "+",
                          style: TextStyle(fontSize: 70, color: kPRYCOLOUR),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Add Product",
                          style: TextStyle(fontSize: 25, color: kPRYCOLOUR),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 10,
          iconSize: 30,
          unselectedItemColor: kPRYCOLOUR,
          selectedItemColor: kPRYCOLOUR,
          currentIndex: currentIndex = 1,
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
                  child: const Icon(Icons.browse_gallery_outlined)),
              label: "Browse",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Order_History())),
                  child: const Icon(Icons.history)),
              label: "store",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Order_History())),
                  child: const Icon(Icons.history)),
              label: "order history",
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
