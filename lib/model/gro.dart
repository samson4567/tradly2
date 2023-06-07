import 'package:flutter/cupertino.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';

import '../utilis/App_widget/dimention.dart';

class gro extends StatelessWidget {
  const gro({
    super.key,
    required this.name,
  });
final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(30),
      width: getScreenWidth(150),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          shape: BoxShape.rectangle,
          color: kFlutsi2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(
           name
          ),
        ],
      ),
    );
  }
}