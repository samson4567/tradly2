import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/model/con_tax.dart';
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
      appBar: AppBar(
        backgroundColor: kPRYCOLOUR,
        title: const Text(
          "Browse",
          style: TextStyle(fontSize: 30),
        ),
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
      backgroundColor: kFlutsi,
      body: ListView(
        children: [
          Row(
            children: [
              contax(
                title: 'Apple',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/apple1.png"),
              ),
              contax(
                title: 'Orange',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/orange.png"),
              ),
            ],
          ),
          Row(
            children: [
              contax(
                title: 'Moisturzier',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/cream.png"),
              ),
              contax(
                title: 'Brocolli',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/meat.png"),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: getScreenWidth(1)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                contax(
                  title: 'chocolate',
                  price: '25',
                  storeName: 'Tradly',
                  imagePath: Image.asset("assets/images/rat.png"),
                ),
                contax(
                  title: 'Bread ',
                  price: '25',
                  storeName: 'Tradly',
                  imagePath: Image.asset("assets/images/cronik.png"),
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
