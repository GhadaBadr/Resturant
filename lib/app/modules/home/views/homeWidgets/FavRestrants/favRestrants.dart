// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:rest/app/modules/home/controllers/home_controller.dart';
import 'package:rest/app/modules/home/views/homeWidgets/FavRestrants/RestCardWidget.dart';

class favRest extends StatelessWidget {
  final String url;
  final String title;
  final Function f;
  final IconData icon;
  final String time;
  final String offer;
  final int x;

  const favRest(
      {required this.url,
      required this.title,
      required this.f,
      required this.icon,
      required this.time,
      required this.offer,
      required this.x});

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
            "مطاعم مفضلة",
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        )),
        Container(
          color: Theme.of(context).colorScheme.secondaryVariant,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: controller.FavRestrantList.map((e) => Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                              width: 300,
                              child: restCard(e.url, e.title, e.f, e.icon,
                                  e.time, e.offer, e.x, context)),
                        ],
                      ),
                    )).toList(),
              ))),
        ),
      ],
    );
  }
}
