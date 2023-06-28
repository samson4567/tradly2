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
          Column(
            children: const [
              Text(
                "This information is used to setup ",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Your Shop",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: getScreenHeight(25),
          ),
          const Classic(
            title: 'storeName',
            realName: 'TradlyStore',
          ),
          const Classic(
            title: 'store web Address',
            realName: 'tradly.app',
          ),
          const Classic(
            title: 'Store Web Address',
            realName: 'tradly.app',
          ),
          const Classic(
            title: 'storAddress',
            realName: 'Sell Groceries and Home care Product',
          ),
          const Classic(
            title: 'storeType',
            realName: 'Groceries Stores',
          ),
          const Classic(
            title: 'Address',
            realName: '125, crescent Ave,Woodbury',
          ),
          const Classic(
            title: 'country ',
            realName: 'usa',
          ),
          const Classic(
            title: 'Coureir Name',
            realName: 'Blue Dart',
          ),
          Container(
            height: 50,
            width: 200,
            color: kWHTCOLOUR,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tagline',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    height: getScreenHeight(7),
                  ),
                  Container(
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
                          "Groceries X",
                          style: TextStyle(fontSize: 17, color: kBLKCOLOUR),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getScreenHeight(10),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Store2()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
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

class Classic extends StatelessWidget {
  const Classic({
    required this.title,
    required this.realName,
    super.key,
  });
  final String title;
  final String realName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.zero),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 9, color: Colors.black.withOpacity(0.06))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: getScreenHeight(10),
              ),
              Text(
                realName,
                style: const TextStyle(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: getScreenHeight(15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
