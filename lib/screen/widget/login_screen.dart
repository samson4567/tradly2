import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/home_dashboard.dart';
import 'package:tradly2/screen/widget/sign_up.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Login_Screen extends StatefulWidget {
  Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var passwordController;
    return Scaffold(
      backgroundColor: kPRYCOLOUR,
      body: Padding(
        padding: EdgeInsets.only(
          top: getScreenHeight(70),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: getScreenHeight(100),
              ),
              const Text(
                "Welcome to tradly",
                style: TextStyle(fontSize: 35, color: kWHTCOLOUR),
              ),
              const SizedBox(height: 100),
              const Text(
                "Login to your account",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: kWHTCOLOUR),
              ),
              SizedBox(height: getScreenHeight(60)),
              Padding(
                  padding: EdgeInsets.only(
                      right: getScreenWidth(32), left: getScreenWidth(32)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: kWHTCOLOUR)),
                      labelText: "Email/Mobile Number ",
                      labelStyle: TextStyle(color: kWHTCOLOUR),
                      prefixIcon: const Icon(Icons.verified_outlined),
                      prefixIconColor: kWHTCOLOUR,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  )),
              SizedBox(
                height: getScreenHeight(20),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      right: getScreenWidth(32), left: getScreenWidth(32)),
                  child: TextFormField(
                    contextMenuBuilder: passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: kWHTCOLOUR)),
                      labelText: "Password ",
                      labelStyle: const TextStyle(color: kWHTCOLOUR),
                      prefixIcon: const Icon(Icons.verified_outlined),
                      prefixIconColor: kWHTCOLOUR,
                    ),
                    validator: (value) {
                      if (value!.length < 6) {
                        return 'Password is minimum of 6 characters';
                      } else {
                        return null;
                      }
                    },
                  )),
              TextButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }else{
                    return;
                  }
                },
                child: Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(80)),
                  child: Container(
                    height: getScreenHeight(40),
                    width: getScreenWidth(270),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                        color: kWHTCOLOUR),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "login",
                          style: TextStyle(fontSize: 17, color: kPRYCOLOUR),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: kWHTCOLOUR),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w200,
                          color: kWHTCOLOUR),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sign_UP())),
                      child: const Text(
                        "SignUp",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: kWHTCOLOUR),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
