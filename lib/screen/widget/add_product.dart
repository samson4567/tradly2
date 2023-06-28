import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/add_product2.dart';
import 'package:tradly2/screen/widget/store2.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

// ignore: camel_case_types
class Add_Product extends StatefulWidget {
  const Add_Product({super.key});

  @override
  State<Add_Product> createState() => _Add_ProductState();
}

// ignore: camel_case_types
class _Add_ProductState extends State<Add_Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlutsi,
      body: ListView(
        children: [
          Container(
            height: getScreenHeight(120),
            width: getScreenWidth(400),
            color: kPRYCOLOUR,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: kWHTCOLOUR,
                    ),
                  ),
                ),
                SizedBox(
                  width: getScreenWidth(60),
                ),
                const Text(
                  "Add  Product",
                  style: TextStyle(
                      fontSize: 30,
                      color: kWHTCOLOUR,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(30),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(40)),
                child: Column(
                  children: [
                    Container(
                      height: getScreenHeight(100),
                      width: getScreenWidth(120),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "+",
                            style: TextStyle(fontSize: 30, color: kFluts),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Add Product",
                            style: TextStyle(fontSize: 20, color: kPRYCOLOUR),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "160*120 for hi res",
                            style: TextStyle(
                                fontSize: 10,
                                color: kPRYCOLOUR,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getScreenHeight(10),
                    ),
                    const Text(
                      "Max. 4 photos per Product",
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: getScreenHeight(12)),
                child: Image.asset("assets/images/Mask1.png"),
              )
            ],
          ),
          Container(
            height: getScreenHeight(80),
            width: getScreenWidth(150),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenHeight(15), top: getScreenWidth(10)),
                  child: const Text(
                    "Product Name",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(15)),
                  child: const Text(
                    " Brocolli",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(80),
            width: getScreenWidth(150),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenHeight(15), top: getScreenWidth(10)),
                  child: const Text(
                    "Category Product",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(15)),
                  child: const Text(
                    " vegetables",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(80),
            width: getScreenWidth(150),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenHeight(15), top: getScreenWidth(10)),
                  child: const Text(
                    "price",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(15)),
                  child: const Text(
                    " offer price ",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(80),
            width: getScreenWidth(150),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenHeight(15), top: getScreenWidth(10)),
                  child: const Text(
                    "Location Details",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(15)),
                  child: const Text(
                    " ",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(2),
          ),
          Container(
            height: getScreenHeight(140),
            width: getScreenWidth(150),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenHeight(15), top: getScreenWidth(10)),
                  child: const Text(
                    "Product description",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(6),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(10)),
                  child: const Text(
                    " adflhavdfahjbfgusfhfbvsdfjlkdsbvhfldfvklsdvjlsdkvfhlvbf,f vrdsa,fdsgvf,grfhsdgbvfdfefvfdvnugvdndsurjvfjhgvbkddfugjvnfhfksfsfcjfuledu",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(4),
          ),
          Container(
            height: getScreenHeight(80),
            width: getScreenWidth(150),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenHeight(15), top: getScreenWidth(10)),
                  child: const Text(
                    "condition",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(15)),
                  child: const Text(
                    "Organic",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(4),
          ),
          Container(
            height: getScreenHeight(80),
            width: getScreenWidth(150),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenHeight(15), top: getScreenWidth(10)),
                  child: const Text(
                    "Price Type",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(15)),
                  child: const Text(
                    " Fixed ",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(4),
          ),
          Container(
            height: getScreenHeight(80),
            width: getScreenWidth(150),
            color: kWHTCOLOUR,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getScreenHeight(15), top: getScreenWidth(10)),
                  child: const Text(
                    "Aditional details",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: getScreenHeight(25),
                      width: getScreenWidth(150),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(),
                          color: kFluts),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Cash on delivery X",
                            style: TextStyle(fontSize: 17, color: kBLKCOLOUR),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getScreenHeight(25),
                      width: getScreenWidth(150),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(),
                          color: kFluts),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Available X",
                            style: TextStyle(fontSize: 17, color: kBLKCOLOUR),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Add_Product2()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                height: getScreenHeight(40),
                width: getScreenWidth(100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: kPRYCOLOUR),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Add Product",
                      style: TextStyle(fontSize: 25, color: kWHTCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
