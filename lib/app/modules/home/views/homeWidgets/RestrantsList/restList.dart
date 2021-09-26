// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import 'package:rest/app/modules/home/controllers/home_controller.dart';
import 'package:rest/app/modules/home/views/homeWidgets/RestrantsList/restListWidget.dart';

class restList extends StatelessWidget {
  final String url;
  final String title;
  final String time;
  final String offer;
  final String rate;

  const restList(
      {required this.url,
      required this.title,
      required this.time,
      required this.offer,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    HomeController controller = HomeController();
    return Container(
      color: Theme.of(context).colorScheme.secondaryVariant,
      padding: EdgeInsets.all(5),
      child: Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: controller.RestrantList.map((e) => Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Theme.of(context).colorScheme.primary,
              ),
              padding: EdgeInsets.all(5),
              // height: Get.height / 9,

              child: Row(
                children: <Widget>[
                  Container(
                      child: RestListWidget(
                          e.url, e.title, e.offer, e.rate, e.time, context)),
                ],
              ),
            )).toList(),
      )),
    );
  }
}
