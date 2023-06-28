import 'package:flutter/cupertino.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';
import 'package:tradly2/utilis/App_widget/dimention.dart';

class Contax extends StatelessWidget {
  const Contax(
      {super.key,
      required this.imagePath,
      required this.productName,
      required this.supplierName,
      required this.mainPrice,
      r});

  final String imagePath;
  final String productName;
  final String supplierName;
  final String mainPrice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(10), vertical: getScreenHeight(15)),
        child: Container(
          height: getScreenHeight(200),
          width: getScreenWidth(160),
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
                    height: getScreenHeight(127),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getScreenHeight(10),
                            ),
                            topRight: Radius.circular(
                              getScreenHeight(10),
                            )),
                        image: DecorationImage(
                            image: AssetImage(
                              imagePath,
                            ),
                            fit: BoxFit.fill)),
                    //  child: Image.asset(imagePath, fit: BoxFit.fill,),
                  ),
                ),
              ),
              SizedBox(
                height: getScreenHeight(16),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getScreenWidth(10)),
                child: Text(productName,style: TextStyle(fontSize: 18),),
              ),
              SizedBox(
                height: getScreenHeight(16),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getScreenWidth(10)),
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
                      width: getScreenWidth(35),
                    ),
                    Text(mainPrice)
                  ],
                ),
              ),
              SizedBox(
                height: getScreenHeight(16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
