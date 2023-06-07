import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/home_dashboard.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Order_Details extends StatefulWidget {
  const Order_Details({super.key});

  @override
  State<Order_Details> createState() => _Order_DetailsState();
}

class _Order_DetailsState extends State<Order_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlutsi,
      body: ListView(children: [
        Container(
          height: getScreenHeight(150),
          width: getScreenWidth(400),
          color: kPRYCOLOUR,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "Order Details",
                style: TextStyle(
                    fontSize: 30,
                    color: kWHTCOLOUR,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "X",
                style: TextStyle(
                    fontSize: 30,
                    color: kWHTCOLOUR,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Image.asset("assets/images/tnks.jpg"),
        Container(
          decoration: const BoxDecoration(
            color: kWHTCOLOUR,
          ),
          height: getScreenHeight(140),
          width: getScreenWidth(400),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(10)),
                child: Image.asset(
                  "assets/images/coke3.png",
                  height: getScreenHeight(100),
                  width: getScreenWidth(100),
                ),
              ),
              SizedBox(
                width: getScreenWidth(20),
              ),
              Padding(
                padding: EdgeInsets.only(top: getScreenHeight(40)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Coca Cola",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: getScreenHeight(10),
                    ),
                    Row(
                      children: [
                        const Text(
                          "25",
                          style: TextStyle(
                              fontSize: 20,
                              color: kPRYCOLOUR,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: getScreenWidth(10),
                        ),
                        const Text(
                          "50%",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: getScreenWidth(10),
                        ),
                        const Text(
                          "50%0ff",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getScreenHeight(10),
                    ),
                    Row(
                      children: const [
                        Text("Qty : 1"),
                        Icon(Icons.arrow_downward_outlined)
                      ],
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
        Container(
          decoration: const BoxDecoration(
            color: kWHTCOLOUR,
          ),
          height: getScreenHeight(400),
          width: getScreenWidth(400),
     child: Column(children: [Text("Track Order ")],),   ),
        SizedBox(
          height: getScreenHeight(20),
        ),
        Container(
          decoration: const BoxDecoration(
            color: kWHTCOLOUR,
          ),
          height: getScreenHeight(150),
          width: getScreenWidth(400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getScreenWidth(16),
                  top: getScreenHeight(20),
                ),
                child: const Text(
                  "Delivery Address",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "_______________________________________",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
              ),
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(20)),
                child: const Text(
                  "Tradly team",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: getScreenHeight(10),
              ),
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(20)),
                child: const Text(
                  "Flat Number 512  Eden Garden, Rewarri",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: kPRYCOLOUR),
                ),
              ),
              SizedBox(
                height: getScreenHeight(7),
              ),
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(20)),
                child: const Text(
                  "Mobile:  987654210",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getScreenHeight(40),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Home_dashboard()));
          },
          child: const Text(
            "Back to Home",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        )
      ]),
    );
  }
}
