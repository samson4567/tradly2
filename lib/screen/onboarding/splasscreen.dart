import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tradly2/screen/widget/send_otp.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/screen/onboarding/onboarding_1.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';
import 'package:tradly2/utilis/App_widget/route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'splash.screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    initialAction();
    super.initState();
  }

  Future<Timer> initialAction() async {
    return Timer(
      const Duration(seconds: 3),
      () {
        RouteNavigators.routeReplace(context, const Onboarding_1());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: kPRYCOLOUR,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
              scale: _animation,
              child: Image.asset("assets/images/group2.png")),
          SizedBox(
            height: getScreenHeight(20),
          ),
        Image.asset("assets/images/Tradly.png") ],
      ),
    );
  }
}
