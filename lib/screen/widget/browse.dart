import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/model/mainpage.dart';
import 'package:tradly2/screen/widget/home_dashboard.dart';
import 'package:tradly2/screen/widget/myCart.dart';
import 'package:tradly2/screen/widget/create_store.dart';
import 'package:tradly2/screen/widget/product_details.dart';
import 'package:tradly2/screen/widget/profile.dart';
import 'package:tradly2/screen/widget/wishlist.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

import '../../model/con_use.dart';
import 'order_history.dart';

class Browse extends StatefulWidget {
  const Browse({super.key});

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlutsi,
      body: ListView(
        children: [
          Container(
            height: getScreenHeight(200),
            width: getScreenWidth(200),
            color: kPRYCOLOUR,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: getScreenWidth(20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: getScreenHeight(40)),
                      child: const Text(
                        "Browse",
                        style: TextStyle(
                            fontSize: 30,
                            color: kWHTCOLOUR,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: getScreenWidth(140),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: getScreenHeight(35)),
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
                    Padding(
                      padding:  EdgeInsets.only(top: getScreenHeight(35)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyCart()));
                          },
                          icon: const Icon(
                            Icons.shop_two,
                            color: kWHTCOLOUR,
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getScreenWidth(20),
                    right: getScreenWidth(
                      20,
                    ),top: getScreenHeight(15),
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: kWHTCOLOUR)),
                    labelText: "Search Product ",
                    labelStyle: const TextStyle(color: kWHTCOLOUR),
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: kWHTCOLOUR,
                  )),
                ),
                SizedBox(
                  height: getScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: getScreenHeight(30),
                      width: getScreenWidth(120),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: kWHTCOLOUR),
                          color: kPRYCOLOUR),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.soap_sharp,
                            color: kWHTCOLOUR,
                          ),
                          SizedBox(
                            width: getScreenHeight(10),
                          ),
                          const Text(
                            "Sort by",
                            style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getScreenHeight(30),
                      width: getScreenWidth(120),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: kWHTCOLOUR),
                          color: kPRYCOLOUR),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.share_location_outlined,
                            color: kWHTCOLOUR,
                          ),
                          SizedBox(
                            width: getScreenHeight(10),
                          ),
                          const Text(
                            "Location",
                            style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getScreenHeight(30),
                      width: getScreenWidth(120),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: kWHTCOLOUR),
                          color: kPRYCOLOUR),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.arrow_circle_up_sharp,
                            color: kWHTCOLOUR,
                          ),
                          SizedBox(
                            width: getScreenHeight(10),
                          ),
                          const Text(
                            "Category",
                            style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: const [
              contax(
                  productName: 'Apple',
                  mainPrice: '25',
                  supplierName: 'Tradly',
                  imagePath: "assets/images/apple1.png"),
              contax(
                productName: 'Orange',
                mainPrice: '25',
                supplierName: 'Tradly',
                imagePath: "assets/images/orange.png",
              ),
            ],
          ),
          Row(
            children: const [
              contax(
                productName: 'Moisturzier',
                mainPrice: '25',
                supplierName: 'Tradly',
                imagePath: "assets/images/cream.png",
              ),
              contax(
                productName: 'Brocolli',
                mainPrice: '25',
                supplierName: 'Tradly',
                imagePath: "assets/images/meat.png",
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: getScreenWidth(1)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                contax(
                    productName: "chocolate",
                    mainPrice: '25',
                    supplierName: 'Tradly',
                    imagePath: "assets/images/rat.png"),
                contax(
                    productName: 'Bread ',
                    mainPrice: "25",
                    supplierName: 'Tradly',
                    imagePath: "assets/images/cronik.png"),
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
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Home_dashboard())),
                  child: const Icon(Icons.home)),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Browse())),
                  child: const Icon(Icons.search)),
              label: "Browse",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const My_Store())),
                  child: const Icon(Icons.history)),
              label: "product",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Order_History())),
                  child: const Icon(Icons.history)),
              label: "order history",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile())),
                  child: const Icon(Icons.person)),
              label: "profile",
            )
          ]),
    );
  }
}
  //  appBar: AppBar(
  //       backgroundColor: kPRYCOLOUR,
  //       title: const Text(
  //         "Browse",
  //         style: TextStyle(fontSize: 30),
  //       ),
  //       actions: [
  //         IconButton(
  //             onPressed: () {
  //               Navigator.push(context,
  //                   MaterialPageRoute(builder: (context) => const Wishlist()));
  //             },
  //             icon: Icon(Icons.heart_broken)),
  //         IconButton(
  //             onPressed: () {
  //               Navigator.push(context,
  //                   MaterialPageRoute(builder: (context) => const MyCart()));
  //             },
  //             icon: Icon(Icons.shop_two))
  //       ],
  //     ),