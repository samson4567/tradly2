import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/store.dart';
import 'package:tradly2/screen/widget/store_ptofile.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Product_Details extends StatefulWidget {
  const Product_Details({super.key});

  @override
  State<Product_Details> createState() => _Product_DetailsState();
}

class _Product_DetailsState extends State<Product_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Container(
          height: getScreenHeight(60),
          width: getScreenWidth(200),
          color: kPRYCOLOUR,
          child:  InkWell(
              onTap: () => Navigator.pop(context),
            child:  Padding(
              padding: EdgeInsets.only(right: getScreenWidth(300)),
              child: const Icon(
                Icons.arrow_back_sharp,
                color: kWHTCOLOUR,
              ),
            ),
          )),
      Container(
        height: getScreenHeight(200),
        width: getScreenWidth(30),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/clo.png"), fit: BoxFit.cover),
        ),
        child: Column(),
      ),
      SizedBox(
        height: getScreenHeight(20),
      ),
      Container(
        height: getScreenHeight(100),
        width: getScreenWidth(400),
        color: kWHTCOLOUR,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
                left: getScreenWidth(
                  20,
                ),
                top: getScreenHeight(20)),
            child: const Text(
              "Cola Cola",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: getScreenHeight(15),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(25)),
                child: const Text("\$25",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kPRYCOLOUR)),
              ),
              SizedBox(
                width: getScreenWidth(10),
              ),
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(20)),
                child: const Text("50  50%0ff",
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
            ],
          ),
        ]),
      ),
      SizedBox(
        height: getScreenHeight(20),
      ),
      Container(
        height: getScreenHeight(100),
        width: getScreenWidth(400),
        color: kWHTCOLOUR,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
                left: getScreenWidth(
                  20,
                ),
                top: getScreenHeight(20)),
            child: Row(
              children: [
                Container(
                  height: getScreenHeight(40),
                  width: getScreenWidth(40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      shape: BoxShape.rectangle,
                      color: kPRYCOLOUR),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "T",
                        style: TextStyle(
                          fontSize: 25,
                          color: kWHTCOLOUR,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                const Text(
                  "Tradly Store",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: kPRYCOLOUR,
                      fontSize: 20),
                ),
                SizedBox(width: getScreenWidth(70)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Store_Profile()));
                  },
                  child: Container(
                    height: getScreenHeight(30),
                    width: getScreenWidth(100),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                        color: kPRYCOLOUR),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Follow",
                          style: TextStyle(fontSize: 17, color: kWHTCOLOUR),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      SizedBox(height: getScreenHeight(6)),
      Container(
        height: getScreenHeight(220),
        width: getScreenHeight(400),
        color: kWHTCOLOUR,
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis cras placerat diam ipsum ut. Nisi vel adipiscing massa bibendum diam. Suspendisse mattis dui maecenas duis mattis. Mattis aliquam at arcu, semper nunc, venenatis et pellentesq.” ",
            style: TextStyle(fontSize: 22, color: kPRYCOLOUR),
          ),
        ),
      ),
      SizedBox(height: getScreenHeight(6)),
      Container(
        height: getScreenHeight(200),
        width: getScreenWidth(400),
        color: kWHTCOLOUR,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: getScreenWidth(20)),
              child: const Text(
                "Details",
                style: TextStyle(
                    color: kBLKCOLOUR,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: getScreenHeight(25)),
            Padding(
              padding: EdgeInsets.only(left: getScreenWidth(20)),
              child: Row(
                children: [
                  const Text(
                    "Condition",
                    style: TextStyle(fontSize: 18, color: kPRYCOLOUR),
                  ),
                  SizedBox(width: getScreenWidth(15)),
                  const Text(
                    "Organic",
                    style: TextStyle(fontSize: 18, color: kPRYCOLOUR),
                  )
                ],
              ),
            ),
            SizedBox(height: getScreenHeight(15)),
            Padding(
              padding: EdgeInsets.only(left: getScreenWidth(20)),
              child: Row(
                children: [
                  const Text(
                    "Priced Type",
                    style: TextStyle(fontSize: 18, color: kPRYCOLOUR),
                  ),
                  SizedBox(width: getScreenWidth(15)),
                  const Text(
                    "Fixed",
                    style: TextStyle(fontSize: 18, color: kPRYCOLOUR),
                  )
                ],
              ),
            ),
            SizedBox(height: getScreenHeight(15)),
            Padding(
              padding: EdgeInsets.only(left: getScreenWidth(20)),
              child: Row(
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(fontSize: 18, color: kPRYCOLOUR),
                  ),
                  SizedBox(width: getScreenWidth(15)),
                  const Text(
                    "Beverages",
                    style: TextStyle(fontSize: 18, color: kPRYCOLOUR),
                  )
                ],
              ),
            ),
            SizedBox(height: getScreenHeight(15)),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Text(
                    "Location",
                    style: TextStyle(fontSize: 18, color: kPRYCOLOUR),
                  ),
                  SizedBox(width: getScreenWidth(15)),
                  const Text(
                    "Kapppul Malaysia",
                    style: TextStyle(fontSize: 18, color: kPRYCOLOUR),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: getScreenHeight(10),
      ),
      Container(
        height: getScreenHeight(100),
        width: getScreenWidth(400),
        color: kWHTCOLOUR,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: getScreenWidth(20)),
              child: const Text(
                "Additional Details",
                style: TextStyle(
                    color: kBLKCOLOUR,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: getScreenHeight(20),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(23)),
                  child: const Text(
                    "Delivery Details",
                    style: TextStyle(
                      color: kPRYCOLOUR,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Column(
                  children: [
                    const Text(
                      "Home Delivery Available",
                      style: TextStyle(
                        color: kBLKCOLOUR,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: getScreenWidth(45)),
                      child: const Text(
                        "Cash on Delivery",
                        style: TextStyle(
                          color: kBLKCOLOUR,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: getScreenHeight(20),
      ),
      Padding(
        padding: EdgeInsets.only(
            top: getScreenHeight(50),
            right: getScreenWidth(60),
            left: getScreenWidth(60)),
        child: Container(
          height: getScreenHeight(40),
          width: getScreenWidth(250),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              shape: BoxShape.rectangle,
              color: kPRYCOLOUR),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Add To Chart",
                style: TextStyle(fontSize: 25, color: kWHTCOLOUR),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
