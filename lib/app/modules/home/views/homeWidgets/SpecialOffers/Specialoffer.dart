// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rest/app/modules/home/views/homeWidgets/SpecialOffers/OfferWidget.dart';

// ignore: camel_case_types
class specialOffer extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Widget SpecialRow(BuildContext context, String url, String title,
      String price, String pastPrice, String icon, Color color) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: SafeArea(
            child: SizedBox(
                height: 100,
                child: GridView(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 70 / 210,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: [
                    for (int i = 0; i < 4; i++)
                      Center(
                        child: offertWidget(
                            url, title, price, pastPrice, icon, color, context),
                      ),
                  ],

                  //   Center(
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: [
      Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                "عروض حصرية",
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Flexible(
              child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " كل العروض",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 15,
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
      SpecialRow(
        context,
        'https://i.ibb.co/1YCFRbj/pizza2.png',
        "بيتزا اللحم و الخضار",
        "2.00 د.ك",
        "2.50 د.ك",
        'https://i.ibb.co/SKkcLYq/Burger-King.png',
        Color(4294699495),
      ),
      SpecialRow(
        context,
        'https://i.ibb.co/X2GrcJM/food3.png',
        "ماك ايديشن",
        "2.00 د.ك",
        "2.50 د.ك",
        'https://i.ibb.co/SKkcLYq/Burger-King.png',
        Color(4293457385),
      )
    ]));
  }
}
