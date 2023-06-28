import 'package:flutter/material.dart';
import 'package:tradly2/model/mainpage.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

import 'myCart.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPRYCOLOUR,
        title: const Text("Wishlist",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: kFlutsi,
      body: Column(
        children: [SizedBox(height: 20,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Contax(
                  imagePath: "assets/images/apple1.png",
                  productName: "apple",
                  supplierName: "Tradly",
                  mainPrice: "\$25"),
              Contax(
                  imagePath: "assets/images/orange.png",
                  productName: "orange",
                  supplierName: "Tradly",
                  mainPrice: "\$25"),
            ],
          ),
          
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Contax(
                  imagePath: "assets/images/cream.png",
                  productName: "Moisturi",
                  supplierName: "Tradly",
                  mainPrice: "\$25"),
              Contax(
                  imagePath: "assets/images/meat.png",
                  productName: "meat",
                  supplierName: "Tradly",
                  mainPrice: "\$25"),
            ],
          ),
        ],
      ),
    );
  }
}
