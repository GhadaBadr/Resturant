// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget RestListWidget(String url, String title, String offer, String rate,
    String time, BuildContext context) {
  return Expanded(
      child: GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Column(
                children: [
                  Row(
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
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 2),
                              child: Text(
                                title,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Icon(Icons.star,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary),
                                            Expanded(
                                                child: Text(
                                              rate,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            ))
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Icon(Icons.delivery_dining_rounded,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary),
                                            Expanded(
                                              child: Text(
                                                offer,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Icon(Icons.timer_rounded,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary),
                                            Expanded(
                                                child: Text(
                                              time,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            )),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )));
}
