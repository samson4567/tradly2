import 'package:flutter/material.dart';

import '../utilis/App_widget/app_color.dart';
import '../utilis/App_widget/dimention.dart';

class container extends StatelessWidget {
  const container({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(130),
      width: getScreenWidth(400),
      color: kPRYCOLOUR,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      right: 50,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: kWHTCOLOUR,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getScreenWidth(35),
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kWHTCOLOUR),
              )
            ],
          ),
          SizedBox(
            height: getScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: getScreenHeight(30),
                width: getScreenWidth(120),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: kWHTCOLOUR),
                    color: kPRYCOLOUR),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.soap_sharp,
                      color: kWHTCOLOUR,
                    ),
                    SizedBox(
                      width: getScreenHeight(10),
                    ),
                    const Text(
                      "Sort by",
                      style: TextStyle(fontSize: 13, color: kWHTCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: getScreenHeight(30),
                width: getScreenWidth(120),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: kWHTCOLOUR),
                    color: kPRYCOLOUR),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.share_location_outlined,
                      color: kWHTCOLOUR,
                    ),
                    SizedBox(
                      width: getScreenHeight(10),
                    ),
                    const Text(
                      "location",
                      style: TextStyle(fontSize: 13, color: kWHTCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: getScreenHeight(30),
                width: getScreenWidth(120),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: kWHTCOLOUR),
                    color: kPRYCOLOUR),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.arrow_circle_up_sharp,
                      color: kWHTCOLOUR,
                    ),
                    SizedBox(
                      width: getScreenHeight(10),
                    ),
                    const Text(
                      "category",
                      style: TextStyle(fontSize: 13, color: kWHTCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
