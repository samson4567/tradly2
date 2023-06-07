import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/enter_otp.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class SignIN extends StatefulWidget {
  const SignIN({super.key});

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('1234');
    return Scaffold(
      backgroundColor: kPRYCOLOUR,
      body: Column(
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: const Padding(
              padding: EdgeInsets.only(right: 350, top: 80),
              child: Icon(
                Icons.arrow_back,
                color: kWHTCOLOUR,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200, left: 15),
            child: Text(
              "Verify your phone number ",
              style: TextStyle(fontSize: 30, color: kWHTCOLOUR),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "we have sent you an sms with a code to enter number",
              style: TextStyle(
                fontSize: 23,
                color: kWHTCOLOUR,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 25, right: 25),
          //   child: TextFormField(
          //     keyboardType: TextInputType.number,
          //     style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //     decoration: InputDecoration(
          //         enabledBorder: OutlineInputBorder(
          //           borderSide: const BorderSide(color: kWHTCOLOUR),
          //           borderRadius: BorderRadius.circular(30),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //             borderSide: const BorderSide(color: kWHTCOLOUR),
          //             borderRadius: BorderRadius.circular(30)),
          //         prefix: const Padding(
          //           padding: EdgeInsets.symmetric(horizontal: 8),
          //           child: Text(
          //             "+91",
          //             style: TextStyle(
          //                 fontSize: 18,
          //                 color: kWHTCOLOUR,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //         suffixIcon: const Icon(
          //           Icons.check_circle,
          //           color: kWHTCOLOUR,
          //           size: 32,
          //         )),
          //   ),
          // ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Or login with  social network",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300, color: kWHTCOLOUR),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Enter_Otp()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: getScreenHeight(50),
                width: getScreenWidth(320),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    shape: BoxShape.rectangle,
                    color: kWHTCOLOUR),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Next",
                      style: TextStyle(fontSize: 25, color: kPRYCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
