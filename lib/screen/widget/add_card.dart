import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/browse.dart';
import 'package:tradly2/screen/widget/create_store.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';

import '../../utilis/App_widget/dimention.dart';

class Add_Card extends StatefulWidget {
  const Add_Card({super.key});

  @override
  State<Add_Card> createState() => _Add_CardState();
}

class _Add_CardState extends State<Add_Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFluts,
      body: ListView(
        children: [
          Stack(children: [
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
                    "Add Card",
                    style: TextStyle(
                        fontSize: 30,
                        color: kWHTCOLOUR,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(70),
                  vertical: getScreenHeight(90)),
              child: Container(
                height: getScreenHeight(200),
                width: getScreenWidth(500),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getScreenHeight(10)),
                  color: kWHTCOLOUR,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getScreenHeight(210),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getScreenHeight(10),
                                  ),
                                  topRight: Radius.circular(
                                    getScreenHeight(10),
                                  )),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/visa.png'),
                                  fit: BoxFit.fill)),
                          //  child: Image.asset(imagePath, fit: BoxFit.fill,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          const Classic(
            title: 'Card Number ',
            realName: '4000 1234 1234',
          ),
          const Classic(
            title: 'Name',
            realName: 'Tradly',
          ),
          SizedBox(
            height: getScreenHeight(1),
          ),
          Container(
            height: getScreenHeight(200),
            width: getScreenWidth(200),
            color: kWHTCOLOUR,
            child: Row(
              children: [
                const Classic(
                  title: 'Card Number ',
                  realName: '4000 1234 1234',
                ),
                SizedBox(
                  width: getScreenWidth(140),
                ),
                const Classic(
                  title: 'CVC ',
                  realName: '***',
                ),
              ],
            ),
          ),
          SizedBox(
            height: getScreenHeight(80),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Container(
              height: getScreenHeight(40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                  color: kPRYCOLOUR),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Browse()));
                  },
                    child: const Text(
                      "Add Credit Card ",
                      style: TextStyle(fontSize: 17, color: kWHTCOLOUR),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
