import 'dart:core';

import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/enter_otp.dart';
import 'package:tradly2/screen/widget/login_screen.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import '../../utilis/App_widget/dimention.dart';
class Sign_UP extends StatefulWidget {
  const Sign_UP({super.key});

  @override
  State<Sign_UP> createState() => _Sign_UPState();
}

class _Sign_UPState extends State<Sign_UP> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmedPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: kPRYCOLOUR,
        body: Padding(
          padding: EdgeInsets.only(
            top: getScreenHeight(60), left: getScreenWidth(10)),
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const Padding(
                  padding: EdgeInsets.only(
                    right: 350,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: kWHTCOLOUR,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Welcome to tradly",
                style: TextStyle(fontSize: 35, color: kWHTCOLOUR),
              ),
              const SizedBox(height: 50),
              const Text(
                "Signup to your account",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: kWHTCOLOUR),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      right: getScreenWidth(32), left: getScreenWidth(32)),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: kWHTCOLOUR)),
                      labelText: "First Name ",
                      labelStyle: TextStyle(color: kWHTCOLOUR),
                      prefixIcon: const Icon(Icons.verified_outlined),
                      prefixIconColor: kWHTCOLOUR,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "pls enter your first name";
                      }
                      return null;
                    },
                  )),
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      right: getScreenWidth(32), left: getScreenWidth(32)),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: kWHTCOLOUR)),
                      labelText: "Last Name ",
                      labelStyle: const TextStyle(color: kWHTCOLOUR),
                      prefixIcon: const Icon(Icons.verified_outlined),
                      prefixIconColor: kWHTCOLOUR,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "pls enter your Last name";
                      }
                      return null;
                    },
                  )),
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 32, left: 32),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: kWHTCOLOUR)),
                      labelText: "Email ID/Mobile Number ",
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
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      right: getScreenWidth(32), left: getScreenWidth(32)),
                  child: TextFormField(
                    obscureText: true ,
                    controller: _password,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: kWHTCOLOUR)),
                      labelText: "Password",
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
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      right: getScreenWidth(32), left: getScreenWidth(32)),
                  child: TextFormField(
                    controller: _confirmedPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: kWHTCOLOUR)),
                      labelText: "Re- enter password ",
                      labelStyle: const TextStyle(color: kWHTCOLOUR),
                      prefixIcon: const Icon(Icons.verified_outlined),
                      prefixIconColor: kWHTCOLOUR,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Pls enter password';
                      }
                      if (_password.text != _confirmedPassword) {
                        return "password do not match";
                      }
                      return null;
                    },
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Enter_Otp()));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: getScreenHeight(20)),
                  child: Container(
                    height: getScreenHeight(50),
                    width: getScreenWidth(270),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                        color: kWHTCOLOUR),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                          },
                          child: const Text(
                            "create",
                            style: TextStyle(fontSize: 17, color: kPRYCOLOUR),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    const Text(
                      "Have an account ?",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w200,
                          color: kWHTCOLOUR),
                    ),
                    SizedBox(
                      width: getScreenWidth(10),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login_Screen())),
                      child: const Text(
                        "Sign in",
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
