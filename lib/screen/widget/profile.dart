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
          height: getScreenHeight(400),
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
              SizedBox(
                height: getScreenHeight(40),
              ),
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(35)),
                child: Row(
                  children: [
                    Container(
                      height: getScreenHeight(70),
                      width: getScreenWidth(70),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
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
                    SizedBox(
                      width: getScreenWidth(20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: getScreenHeight(5)),
                      child: Column(
                        children: const [
                          Text(
                            "Tradly Team",
                            style: TextStyle(
                                color: kWHTCOLOUR,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "+195573483858",
                            style: TextStyle(
                                color: kWHTCOLOUR,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "info@tradly.co",
                            style: TextStyle(
                                color: kWHTCOLOUR,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: getScreenHeight(250), left: getScreenWidth(12)),
          child: Container(
            height: getScreenHeight(320),
            width: getScreenWidth(350),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                shape: BoxShape.rectangle,
                color: kWHTCOLOUR),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: getScreenHeight(20), left: getScreenWidth(20)),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const Text(
                  "____________________________________",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getScreenHeight(10), left: getScreenWidth(20)),
                  child: const Text(
                    "Language & Currency",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const Text(
                  "____________________________________",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ), Padding(
                  padding: EdgeInsets.only(
                      top: getScreenHeight(20), left: getScreenWidth(20)),
                  child: const Text(
                    "Feedback",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const Text(
                  "____________________________________",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getScreenHeight(10), left: getScreenWidth(20)),
                  child: const Text(
                    "Refer a Friend",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                const Text(
                  "____________________________________",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ), Padding(
                  padding: EdgeInsets.only(
                      top: getScreenHeight(20), left: getScreenWidth(20)),
                  child: const Text(
                    "Terms/condition",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const Text(
                  "____________________________________",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getScreenHeight(10), left: getScreenWidth(20)),
                  child: const Text(
                    "Logout",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                
              ],
            ),
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
