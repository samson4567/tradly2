import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tradly2/screen/widget/home_dashboard.dart';
import 'package:tradly2/screen/widget/send_otp.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Enter_Otp extends StatefulWidget {
  const Enter_Otp({super.key});

  @override
  State<Enter_Otp> createState() => _Enter_OtpState();
}

class _Enter_OtpState extends State<Enter_Otp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPRYCOLOUR,
      body: Column(
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: EdgeInsets.only(
                  right: getScreenWidth(300), top: getScreenHeight(80)),
              child: const Icon(
                Icons.arrow_back,
                color: kWHTCOLOUR,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getScreenHeight(100)),
            child: const Text(
              "Phone Verification",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: kWHTCOLOUR),
            ),
          ),
          SizedBox(
            height: getScreenHeight(40),
          ),
          const Padding(
            padding: EdgeInsets.only(),
            child: Text(
              "Enter Your otp code here",
              style: TextStyle(
                  fontSize: 20, color: kWHTCOLOUR, fontWeight: FontWeight.w200),
            ),
          ),
          SizedBox(height: 80),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: PinCodeTextField(
              appContext: context,
              controller: controller,
              length: 6,
              cursorHeight: getScreenHeight(19),
              enableActiveFill: true,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: getScreenWidth(50),
                  inactiveColor: kWHTCOLOUR,
                  selectedColor: Colors.lightBlue,
                  activeColor: Colors.blue,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.blue,
                  borderWidth: 1,
                  borderRadius: BorderRadius.circular(8)),
              obscureText: true,
              onChanged: (String value) {
                print(value);
              },
            ),
          ),
          SizedBox(
            height: getScreenHeight(200),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home_dashboard()));
              },
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
                      "Verify",
                      style: TextStyle(fontSize: 25, color: kPRYCOLOUR),
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
