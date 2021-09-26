// ignore: duplicate_ignore
// ignore: file_names

// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:rest/app/modules/home/controllers/home_controller.dart';
import 'package:rest/app/modules/home/views/homeWidgets/FavKitchen/favCardWidget.dart';

// ignore: camel_case_types
class favKitchen extends StatelessWidget {
  final String title;
  final String imgurl;
  final Color color;
  final Function f;

  const favKitchen(
      {required this.title,
      required this.imgurl,
      required this.color,
      required this.f});

  @override
  Widget build(BuildContext context) {
    HomeController controller = HomeController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Text(
            "اختر مطبخك المفضل",
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        )),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: controller.FavKitchenList.map((e) => Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 120,
                          child: card(e.title, e.imgurl, e.color, e.f, context),
                        )
                      ],
                    ),
                  )).toList(),
            ))),
      ],
    );
  }
}
