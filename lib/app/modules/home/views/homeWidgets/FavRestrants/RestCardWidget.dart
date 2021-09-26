// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:smooth_star_rating/smooth_star_rating.dart';

Widget restCard(String url, String title, Function f, IconData icon,
    String time, String offer, int x, BuildContext context) {
  return GestureDetector(
      onTap: () {
        f;
      },
      child: Container(
          color: Theme.of(context).colorScheme.secondaryVariant,
          margin: EdgeInsets.only(bottom: 5, right: 5, top: 10, left: 5),
          padding: EdgeInsets.all(3),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Theme.of(context).colorScheme.primary,
                  border: Border.all(
                      width: 1.0,
                      color: Theme.of(context).colorScheme.primary)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        url,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              icon,
                              color: Theme.of(context).colorScheme.primary,
                              size: 20,
                            ))),
                  ]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                          child: Text(title,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyText2)),
                      Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SmoothStarRating(
                                      allowHalfRating: false,
                                      starCount: 5,
                                      rating: x.toDouble(),
                                      size: 10.0,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      borderColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      spacing: 0.0)
                                ],
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    x.toDouble().toString(),
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary),
                                  ))
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
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
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ))
                                ],
                              ),
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
                                    time + " دقيقة",
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
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
              ))));
}
