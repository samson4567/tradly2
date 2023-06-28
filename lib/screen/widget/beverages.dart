import 'package:flutter/material.dart';
import 'package:tradly2/model/mainpage.dart';
import 'package:tradly2/model2/product_name.dart';
import 'package:tradly2/screen/widget/browse.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Beverages extends StatefulWidget {
  const Beverages({
    super.key,
  });

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlutsi,
      body: ListView(
        children: [
          Container(
            height: getScreenHeight(130),
            width: getScreenWidth(200),
            color: kPRYCOLOUR,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back,
                          color: kWHTCOLOUR,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getScreenWidth(80),
                    ),
                    const Text(
                      "Beverages",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: kWHTCOLOUR),
                    ),
                    SizedBox(
                      height: getScreenHeight(80),
                    )
                  ],
                ),
                clerex()
              ],
            ),
          ),
          Row(
            children: const [
              Contax(
                  imagePath: 'assets/images/straw.png',
                  productName: 'Straw punch',
                  supplierName: 'Tradly',
                  mainPrice: '\$25'),
              Contax(
                  imagePath: 'assets/images/lemon.png',
                  productName: 'Lemonade',
                  supplierName: 'Tradly',
                  mainPrice: '\$25')
            ],
          ),
          Row(
            children: const [
              Contax(
                  imagePath: 'assets/images/cl.png',
                  productName: 'Straw punch',
                  supplierName: 'Tradly',
                  mainPrice: '\$25'),
              Contax(
                  imagePath: 'assets/images/master.png',
                  productName: 'Whiskey',
                  supplierName: 'Tradly',
                  mainPrice: '\$25')
            ],
          ),
          Row(
            children: const [
              Contax(
                  imagePath: 'assets/images/dellas.png',
                  productName: 'Chocolate Bakery',
                  supplierName: 'Tradly',
                  mainPrice: '\$25'),
              Contax(
                  imagePath: 'assets/images/fruitpunch.png',
                  productName: 'Straw punch',
                  supplierName: 'Tradly',
                  mainPrice: '\$25')
            ],
          )
        ],
      ),
    );
  }
}
