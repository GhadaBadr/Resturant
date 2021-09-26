import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rest/app/modules/home/views/homeWidgets/Brands/brands.dart';
import 'package:rest/app/modules/home/views/homeWidgets/FavKitchen/favKitchen.dart';
import 'package:rest/app/modules/home/views/homeWidgets/FavRestrants/favRestrants.dart';
import 'package:rest/app/modules/home/views/homeWidgets/RestrantsList/restList.dart';
import 'package:rest/app/modules/home/views/homeWidgets/SpecialOffers/Specialoffer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          titleSpacing: 0,
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[100],
            ),
            height: 50,
            padding: EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'برج التجارية',
                      hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primaryVariant,
                        fontSize: 15,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      height: 1.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Theme.of(context).iconTheme.color,
                  ),
                )
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.format_align_left_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Theme.of(context).iconTheme.color,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search_rounded,
                        color: Theme.of(context).iconTheme.color,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          Container(
            child: brand(
              title: '',
            ),
          ),
          Container(
            child: favKitchen(
                title: "", imgurl: "", color: Colors.white, f: () {}),
          ),
          Container(
            child: favRest(
              title: '',
              url: '',
              f: () {},
              time: '',
              offer: '',
              x: 0,
              icon: Icons.ac_unit,
            ),
          ),
          Container(
              child: restList(
            offer: '',
            rate: '',
            time: '',
            title: '',
            url: '',
          )),
          Container(
            child: specialOffer(),
          ),
        ],
      ),
    );
  }
}
