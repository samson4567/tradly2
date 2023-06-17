import 'package:flutter/cupertino.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class contax extends StatelessWidget {

  const contax({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.supplierName,
    required this.mainPrice,
    r
  });

final String imagePath;
 final String  productName;
  final String supplierName;
   final String mainPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: getScreenHeight(20), left: getScreenWidth(12)),
          child: Container(
            height: getScreenHeight(200),
            width: getScreenWidth(155),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: kWHTCOLOUR),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Image.asset(imagePath),
                SizedBox(
                  height: getScreenHeight(9),
                ),
                Padding(
                  padding: EdgeInsets.only(right: getScreenWidth(70)),
                  child: Text(productName),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(26)),
                  child: Row(
                    children: [
                      Container(
                        height: getScreenHeight(20),
                        width: getScreenWidth(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                            color: kPRYCOLOUR),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "T",
                              style: TextStyle(fontSize: 17, color: kWHTCOLOUR),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: getScreenWidth(10),
                      ),
                      Text(supplierName),
                      SizedBox(
                        width: getScreenWidth(40),
                      ),
                      Text(mainPrice)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: getScreenWidth(20),
        ),
      ],
    );
  }
}
