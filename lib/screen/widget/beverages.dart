import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/model/con_use.dart';
import 'package:tradly2/model/mainpage.dart';
import 'package:tradly2/model2/product_name.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kFluts,
        body: SafeArea(
            child: Column(children: const [
          Heading(title: "Beverages"),

         // ProductPageModel(pageName: pageName, productList: productList)
        ])));
  }
}
