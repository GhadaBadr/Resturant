import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData myTheme() {
  return ThemeData(
      primaryColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.black, fontSize: 23),
        bodyText2: TextStyle(
            color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(color: Colors.black, fontSize: 13),
      ),
      colorScheme: ThemeData.light().colorScheme.copyWith(
            primary: Color(0xFFFFFFFF), // <---- I set white color here
            primaryVariant: Color(0xFF000000),
            secondary: Colors.amber,
            secondaryVariant: Color(4294309365),
            error: Colors.red,
          ));
}
