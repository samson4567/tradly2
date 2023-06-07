import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/browse.dart';
import 'package:tradly2/screen/widget/home_dashboard.dart';
import 'package:tradly2/screen/widget/myCart.dart';
import 'package:tradly2/screen/widget/order_history.dart';
import 'package:tradly2/screen/widget/wishlist.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlutsi,
      body: Stack(children: [
       
           Container(
           height: getScreenHeight(800),
            width: getScreenWidth(400),
           color: kPRYCOLOUR,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: getScreenWidth(60), left: getScreenWidth(40)),
                  child: Row(
                    children: [
                      const Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 30,
                            color: kWHTCOLOUR,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: getScreenWidth(120),
                      ),
                      IconButton(
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
                Padding(
                  padding: EdgeInsets.only(
                      right: getScreenWidth(180), top: getScreenHeight(30)),
                  child: Container(
                    height: getScreenHeight(70),
                    width: getScreenWidth(70),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        border: Border.all(color: kWHTCOLOUR),
                        color: kPRYCOLOUR),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "T",
                          style: TextStyle(
                              fontSize: 40,
                              color: kWHTCOLOUR,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getScreenHeight(49),
                          ),
                          child: Container(
                            height: getScreenHeight(20),
                            width: getScreenWidth(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: kWHTCOLOUR),
                                color: kWHTCOLOUR),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        Padding(
          padding: EdgeInsets.only(top: getScreenHeight(200)),
          child: Container(
            height: getScreenHeight(200),
            width: getScreenWidth(350),
            color: kWHTCOLOUR,
          ),
        )
      ]),
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
                  child: const Icon(Icons.store)),
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
