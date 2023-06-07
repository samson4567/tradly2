import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly2/model/con_tax.dart';

import '../../model/con_use.dart';
import '../../utilis/App_widget/app_color.dart';
import '../../utilis/App_widget/dimention.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlutsi,
      body: ListView(children: [
        const container(
          title: 'Beverages',
        ),
        Padding(
          padding: EdgeInsets.only(right: getScreenWidth(1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contax(
                title: 'Strawberry',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/straw.png"),
              ),
              contax(
                title: 'lemonade',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/lemode.png"),
              ),
            ],
          ),
        ),
        Row(
          children: [
            contax(
              title: 'chocolate',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/chocolate.png"),
            ),
            contax(
              title: 'Whiskey',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/mark.png"),
            ),
          ],
        ),
        Row(
          children: [
            contax(
              title: 'chocolate',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/dellas.png"),
            ),
            contax(
              title: 'fruit Punch',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/fruitP.png"),
            ),
          ],
        ),
        SizedBox(
          height: getScreenHeight(20),
        ),
        const container(
          title: 'Bread/Bakery',
        ),
        Padding(
          padding: EdgeInsets.only(right: getScreenWidth(1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contax(
                title: 'chocolate',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/cle.png"),
              ),
              contax(
                title: 'Bread ',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/circleA.png"),
              ),
            ],
          ),
        ),
        Row(
          children: [
            contax(
              title: 'Bread ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/cookies.png"),
            ),
            contax(
              title: 'Bread ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/long.png"),
            ),
          ],
        ),
        Row(
          children: [
            contax(
              title: 'donut',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/donut.png"),
            ),
            contax(
              title: 'Bread ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/long2.png"),
            ),
          ],
        ),
        SizedBox(
          height: getScreenHeight(20),
        ),
        const container(
          title: 'Vegetables',
        ),
        Padding(
          padding: EdgeInsets.only(right: getScreenWidth(1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contax(
                title: 'carrot',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/carrot.png"),
              ),
              contax(
                title: 'cabbage',
                price: '25',
                storeName: 'tradly',
                imagePath: Image.asset("assets/images/rabbage.png"),
              ),
            ],
          ),
        ),
        Row(
          children: [
            contax(
              title: 'tomato',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/tomato.png"),
            ),
            contax(
              title: 'Garlic',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/garlic.png"),
            ),
          ],
        ),
        Row(
          children: [
            contax(
              title: 'Tomato ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/tomato2.png"),
            ),
            contax(
              title: 'corn',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/corn.png"),
            ),
          ],
        ),
        SizedBox(
          height: getScreenHeight(20),
        ),
        const container(
          title: 'Fruit',
        ),
        Padding(
          padding: EdgeInsets.only(right: getScreenWidth(1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contax(
                title: 'Avacado',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/Avacado.png"),
              ),
              contax(
                title: 'Bannana',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/Bannana.png"),
              ),
            ],
          ),
        ),
        Row(
          children: [
            contax(
              title: 'orange',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/orange.png"),
            ),
            contax(
              title: 'papaya',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/papaya.png"),
            ),
          ],
        ),
        Row(
          children: [
            contax(
              title: 'pineapple',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/pine.png"),
            ),
            contax(
              title: 'watermelon',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/watermelon.png"),
            ),
          ],
        ),
        SizedBox(
          height: getScreenHeight(20),
        ),
        const container(
          title: 'Egg',
        ),
        Padding(
          padding: EdgeInsets.only(right: getScreenWidth(1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contax(
                title: 'Brown egg',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/brownegg.png"),
              ),
              contax(
                title: 'fresh brown',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/freshbrown.png"),
              ),
            ],
          ),
        ),
        Row(
          children: [
            contax(
              title: 'Bundle egg',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/Buddle.png"),
            ),
            contax(
              title: 'Blue egg ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/blue.png"),
            ),
          ],
        ),
        Row(
          children: [
            contax(
              title: 'Bird  egg',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/doll.png"),
            ),
            contax(
              title: 'egg ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/fird.png"),
            ),
          ],
        ),
        SizedBox(
          height: getScreenHeight(20),
        ),
        const container(
          title: 'Frozen  veg',
        ),
        Padding(
          padding: EdgeInsets.only(right: getScreenWidth(1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contax(
                title: 'ice cream',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/icecream.png"),
              ),
              contax(
                title: 'Mango ice ',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/mangoice.png"),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            contax(
              title: 'straw berry',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/straw1.png"),
            ),
            contax(
              title: 'matcha ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/matcha.png"),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            contax(
              title: 'Grape ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/loko.png"),
            ),
            contax(
              title: 'Frozen Bottle ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/fronzen2.png"),
            ),
          ],
        ),
        SizedBox(
          height: getScreenHeight(20),
        ),
        const container(
          title: 'Home Care',
        ),
        Padding(
          padding: EdgeInsets.only(right: getScreenWidth(1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contax(
                title: 'Moisturizer',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/moi.png"),
              ),
              contax(
                title: 'vitaminBundd',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/voi.png"),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            contax(
              title: 'Shower Gel',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/soi.png"),
            ),
            contax(
              title: 'Facial wash',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/cream.png"),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            contax(
              title: 'Onne beuty',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/onne.png"),
            ),
            contax(
              title: 'Bread ',
              price: '25',
              storeName: 'Tradly',
              imagePath: Image.asset("assets/images/toi.png"),
            ),
          ],
        ),
        SizedBox(
          height: getScreenHeight(20),
        ),
        const container(
          title: 'Pet Care',
        ),
        Padding(
          padding: EdgeInsets.only(right: getScreenWidth(1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contax(
                title: 'Potion pet',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/cleric.png"),
              ),
              contax(
                title: 'Pet Snack',
                price: '25',
                storeName: 'Tradly',
                imagePath: Image.asset("assets/images/pet.png"),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
