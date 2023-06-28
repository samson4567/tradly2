import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/model/mainpage.dart';
import 'package:tradly2/model/gro.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Store_Profile extends StatefulWidget {
  const Store_Profile({super.key});

  @override
  State<Store_Profile> createState() => _Store_ProfileState();
}

class _Store_ProfileState extends State<Store_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kFlutsi,
        body: ListView(
          children: [
            Container(
              height: getScreenHeight(80),
              width: getScreenWidth(214),
              color: kPRYCOLOUR,
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: EdgeInsets.only(left: getScreenWidth(10)),
                      child: const Icon(
                        Icons.arrow_back,
                        color: kWHTCOLOUR,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getScreenWidth(70),
                  ),
                  const Text(
                    "Tradly Store",
                    style: TextStyle(
                        fontSize: 30,
                        color: kWHTCOLOUR,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: getScreenWidth(70),
                  ),
                  const Icon(
                    Icons.search,
                    color: kWHTCOLOUR,
                  )
                ],
              ),
            ),
            Container(
              //decoration: BoxDecoration(),
              height: getScreenHeight(240),
              width: getScreenWidth(400),
              color: kWHTCOLOUR,
              child: Padding(
                padding: EdgeInsets.only(bottom: getScreenHeight(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: getScreenHeight(22)),
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
                          width: getScreenWidth(20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: getScreenHeight(26)),
                          child: Column(
                            children: const [
                              Text(
                                "Tradly Store",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: kBLKCOLOUR,
                                    fontSize: 20),
                              ),
                              Text(
                                "tradly.app",
                                style:
                                    TextStyle(fontSize: 20, color: kPRYCOLOUR),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: getScreenWidth(70)),
                        Padding(
                          padding: EdgeInsets.only(top: getScreenHeight(24)),
                          child: Container(
                            height: getScreenHeight(25),
                            width: getScreenWidth(90),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                color: kPRYCOLOUR),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Follow",
                                  style: TextStyle(
                                      fontSize: 17, color: kWHTCOLOUR),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getScreenHeight(20),
                    ),
                    Image.asset("assets/images/text.png"),
                    SizedBox(
                      height: getScreenHeight(30),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: getScreenWidth(30)),
                            child: const gro(
                              name: 'Groceries  X',
                            )),
                        SizedBox(
                          width: getScreenWidth(20),
                        ),
                        const gro(
                          name: "variables  X",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: (20),
            ),
            Container(
              height: getScreenHeight(80),
              width: getScreenWidth(214),
              color: kWHTCOLOUR,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: getScreenHeight(20)),
                    child: Column(
                      children: [
                        const Text(
                          "Total Followers",
                          style: TextStyle(fontSize: 18, color: kBLKCOLOUR),
                        ),
                        SizedBox(width: getScreenWidth(15)),
                        const Text(
                          "0",
                          style: TextStyle(fontSize: 18, color: kBLKCOLOUR),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: getScreenHeight(20)),
                    child: Column(
                      children: [
                        const Text(
                          "Total  Product",
                          style: TextStyle(fontSize: 18, color: kBLKCOLOUR),
                        ),
                        SizedBox(width: getScreenWidth(15)),
                        const Text(
                          "0",
                          style: TextStyle(fontSize: 18, color: kBLKCOLOUR),
                        )
                      ],
                    ),
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
                Container(
                  height: getScreenHeight(30),
                  width: getScreenWidth(80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      shape: BoxShape.rectangle,
                      color: kPRYCOLOUR),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "All Product",
                        style: TextStyle(fontSize: 13, color: kWHTCOLOUR),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const product(
                  name: 'fruit',
                ),
                const product(
                  name: 'vegetable',
                ),
                const product(
                  name: 'home',
                ),
              ],
            ),
          Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Contax(
                    productName: 'chocolate',
                    mainPrice: '25',
                    supplierName: 'Tradly',
                    imagePath: "assets/images/apple1.png",
                  ),
                  Contax(
                    productName: 'fruit Punch',
                    mainPrice: '25',
                    supplierName: 'Tradly',
                    imagePath: "assets/images/orange.png",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row( mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Contax(
                    productName: 'chocolate',
                    mainPrice: '25',
                    supplierName: 'Tradly',
                    imagePath: "assets/images/cream.png",
                  ),
                  Contax(
                    productName: 'fruit Punch',
                    mainPrice: '25',
                    supplierName: 'Tradly',
                   imagePath: "assets/images/meat.png",
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class product extends StatelessWidget {
  const product({
    required this.name,
    super.key,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(30),
      width: getScreenWidth(80),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), border: Border.all()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),
        ],
      ),
    );
  }
}
