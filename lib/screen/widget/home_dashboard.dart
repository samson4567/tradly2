import 'package:flutter/material.dart';
import 'package:tradly2/model/con_tax.dart';
import 'package:tradly2/screen/widget/beverages.dart';
import 'package:tradly2/screen/widget/browse.dart';
import 'package:tradly2/screen/widget/myCart.dart';
import 'package:tradly2/screen/widget/create_store.dart';
import 'package:tradly2/screen/onboarding/onboarding_1.dart';
import 'package:tradly2/screen/widget/order_history.dart';
import 'package:tradly2/screen/widget/product_details.dart';
import 'package:tradly2/screen/widget/profile.dart';
import 'package:tradly2/screen/widget/store.dart';
import 'package:tradly2/screen/widget/wishlist.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Home_dashboard extends StatefulWidget {
  const Home_dashboard({super.key});

  @override
  State<Home_dashboard> createState() => _Home_dashboardState();
}

class _Home_dashboardState extends State<Home_dashboard> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFluts,
      body: ListView(
        children: [
          Container(
            height: getScreenHeight(130),
            width: getScreenWidth(400),
            color: kPRYCOLOUR,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: getScreenWidth(20)),
                      child: const Text(
                        "Groceries",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: kWHTCOLOUR),
                      ),
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
                    Padding(
                      padding: EdgeInsets.only(bottom: getScreenHeight(30)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyCart()));
                          },
                          icon: Padding(
                            padding: EdgeInsets.only(top: getScreenHeight(20)),
                            child: const Icon(
                              Icons.shop_two,
                              color: kWHTCOLOUR,
                            ),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenWidth(30),
                      right: getScreenWidth(
                        30,
                      )),
                  child: TextFormField(
                      decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: kWHTCOLOUR)),
                    labelText: "Search Product ",
                    labelStyle: const TextStyle(color: kWHTCOLOUR),
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: kWHTCOLOUR,
                  )),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: getScreenHeight(200),
                width: getScreenWidth(400),
                color: kWHTCOLOUR,
                child: Row(
                  children: [
                    Image.asset("assets/images/fruit.png"),
                    Image.asset("assets/images/flower.png"),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Beverages()));
                      },
                      child: Container(
                        height: getScreenHeight(100),
                        width: getScreenWidth(83),
                        color: kWHTCOLOUR,
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/Beverages.png",
                              width: getScreenWidth(106),
                            ),
                            const Text(
                              "beverage",
                              style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: getScreenHeight(100),
                      width: getScreenWidth(83),
                      color: kWHTCOLOUR,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/Bread.png",
                            width: getScreenWidth(106),
                          ),
                          const Text(
                            "beverage",
                            style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getScreenHeight(100),
                      width: getScreenWidth(83),
                      color: kWHTCOLOUR,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/tule.png",
                            width: getScreenWidth(103),
                          ),
                          const Text(
                            "beverage",
                            style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getScreenHeight(100),
                      width: getScreenWidth(83),
                      color: kWHTCOLOUR,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/egg.png",
                            width: getScreenWidth(103),
                          ),
                          const Text(
                            "beverage",
                            style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/Beverages.png",
                        ),
                        const Text(
                          "beverage",
                          style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/Bread.png",
                        ),
                        const Text(
                          "beverage",
                          style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/Beverages.png",
                        ),
                        const Text(
                          "beverage",
                          style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/petcare.png",
                        ),
                        const Text(
                          "beverage",
                          style: TextStyle(fontSize: 15, color: kWHTCOLOUR),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getScreenHeight(20)),
            child: Row(
              children: [
                const Text(
                  "New Product",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: getScreenWidth(100),
                ),
                Container(
                  height: getScreenHeight(25),
                  width: getScreenWidth(80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kPRYCOLOUR),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "See All",
                        style: TextStyle(fontSize: 13, color: kWHTCOLOUR),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              contax(
                title: 'Apple',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/cocacola.png"),
              ),
              contax(
                title: 'Orange',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/meat.png"),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getScreenHeight(30), top: getScreenHeight(20)),
            child: Row(
              children: [
                const Text(
                  "Product",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: getScreenWidth(120),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(30)),
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
                          "See All",
                          style: TextStyle(fontSize: 13, color: kWHTCOLOUR),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              contax(
                title: 'Apple',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/cocacola.png"),
              ),
              contax(
                title: 'Orange',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/meat.png"),
              ),
            ],
          ),
          SizedBox(
            height: getScreenHeight(30),
          ),
          Stack(children: [
            Container(
              height: getScreenHeight(200),
              width: getScreenWidth(400),
              color: kPRYCOLOUR,
              child: Padding(
                padding: EdgeInsets.only(
                    left: getScreenHeight(10), top: getScreenHeight(30)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Store to Follow",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: kWHTCOLOUR),
                        ),
                        SizedBox(
                          width: getScreenWidth(60),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getScreenWidth(10)),
                          child: Container(
                            height: getScreenHeight(25),
                            width: getScreenWidth(100),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: kWHTCOLOUR),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "view all",
                                  style: TextStyle(
                                      fontSize: 17, color: kPRYCOLOUR),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: getScreenHeight(70), left: getScreenWidth(20)),
              child: Container(
                height: getScreenHeight(200),
                width: getScreenWidth(160),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                    color: kWHTCOLOUR),
                child: Padding(
                  padding: EdgeInsets.only(bottom: getScreenHeight(10)),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: getScreenHeight(10), left: getScreenWidth(10)),
                        child: Image.asset(
                          "assets/images/grains.png",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getScreenWidth(45), top: getScreenHeight(50)),
                        child: Container(
                          height: getScreenHeight(70),
                          width: getScreenWidth(70),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              border: Border.all(color: kWHTCOLOUR),
                              color: kPRYCOLOUR),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "T",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: kWHTCOLOUR,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: getScreenHeight(120),
                            left: getScreenWidth(25)),
                        child: const Text(
                          "Tradly Store",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: kPRYCOLOUR),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getScreenWidth(30),
                            top: getScreenHeight(160)),
                        child: Container(
                          height: getScreenHeight(25),
                          width: getScreenWidth(100),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: kPRYCOLOUR),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Follow",
                                style:
                                    TextStyle(fontSize: 17, color: kWHTCOLOUR),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getScreenHeight(
                  200,
                ),
                top: getScreenHeight(70),
              ),
              child: Container(
                height: getScreenHeight(200),
                width: getScreenWidth(160),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                    color: kWHTCOLOUR),
                child: Padding(
                  padding: EdgeInsets.only(bottom: getScreenHeight(10)),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: getScreenHeight(10), left: getScreenWidth(10)),
                        child: Image.asset(
                          "assets/images/potato.png",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getScreenWidth(45), top: getScreenHeight(50)),
                        child: Container(
                          height: getScreenHeight(70),
                          width: getScreenWidth(70),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              border: Border.all(color: kWHTCOLOUR),
                              color: Colors.lightBlue),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "A",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: kWHTCOLOUR,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: getScreenHeight(120),
                            left: getScreenWidth(15)),
                        child: const Text(
                          "Groceries store",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: kPRYCOLOUR),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getScreenWidth(30),
                            top: getScreenHeight(160)),
                        child: Container(
                          height: getScreenHeight(25),
                          width: getScreenWidth(100),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: kPRYCOLOUR),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Follow",
                                style:
                                    TextStyle(fontSize: 17, color: kWHTCOLOUR),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
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
                          builder: (context) => Product_details())),
                  child: const Icon(Icons.home)),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Browse())),
                  child: const Icon(Icons.search_rounded)),
              label: "Browse",
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
