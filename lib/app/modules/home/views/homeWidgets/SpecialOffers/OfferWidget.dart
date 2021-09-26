// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget offertWidget(String url, String title, String price, String pastPrice,
    String icon, Color color, BuildContext context) {
  return Expanded(
      child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: color),
            padding: EdgeInsets.all(10),
            child: Expanded(
                child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.network(
                            url,
                            width: 80,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 2),
                                child: Text(
                                  title,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                          child: Row(
                                        children: [
                                          Flexible(
                                              child: Text(
                                            price,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1,
                                            overflow: TextOverflow.ellipsis,
                                          ))
                                        ],
                                      )),
                                      Expanded(
                                          child: Row(
                                        children: [
                                          Flexible(
                                              child: Text(
                                            pastPrice,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .error,
                                              fontSize: 10,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ))
                                        ],
                                      )),
                                      Expanded(
                                          child: Row(
                                        children: [
                                          Flexible(
                                              child: Image.network(
                                            icon,
                                            width: 20,
                                          ))
                                        ],
                                      )),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )),
          )));
}
