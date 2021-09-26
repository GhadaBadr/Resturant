import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest/app/modules/home/views/homeWidgets/FavRestrants/favRestrants.dart';
import 'package:rest/app/modules/home/views/homeWidgets/Brands/brands.dart';
import 'package:rest/app/modules/home/views/homeWidgets/FavKitchen/favKitchen.dart';
import 'package:rest/app/modules/home/views/homeWidgets/RestrantsList/restList.dart';

class HomeController extends GetxController {
  // Brand list
  // ignore: non_constant_identifier_names
  final BrandList = [
    brand(
      title: 'https://i.ibb.co/SKkcLYq/Burger-King.png',
    ),
    brand(
      title: 'https://i.ibb.co/ZhRmy3c/Mc-Donalds.png',
    ),
    brand(
      title: 'https://i.ibb.co/wQ3HVLk/KFC-logo.png',
    ),
    brand(
      title: 'https://i.ibb.co/fxV3RTG/pizzaHut.png',
    ),
    brand(
      title: 'https://i.ibb.co/sjLtWPq/Wendys.png',
    ),
    brand(
      title: 'https://i.ibb.co/b2GC4wX/Domino.png',
    ),
  ];
  // FavKitchen list
  // ignore: non_constant_identifier_names
  final FavKitchenList = [
    favKitchen(
      title: " مشويات",
      imgurl: "https://i.ibb.co/MScmV3S/grill.png",
      color: Color(0xFFEDE7F6),
      f: () {},
    ),
    favKitchen(
      title: "بيتزا",
      imgurl: "https://i.ibb.co/Vgb87b6/pizza.png",
      color: Color(4294699495),
      f: () {},
    ),
    favKitchen(
      title: "برغر",
      imgurl: "https://i.ibb.co/JswrMY8/pergher.png",
      color: Color(4293457385),
      f: () {},
    ),
    favKitchen(
      title: "سوشى",
      imgurl: "https://i.ibb.co/Vgb87b6/pizza.png",
      color: Color(0xFFE3F2FD),
      f: () {},
    ),
  ];
  // FavRestrant list
  // ignore: non_constant_identifier_names
  final FavRestrantList = [
    favRest(
      title: "ماك ايديشن",
      url: "https://i.ibb.co/wJqxNcr/item11.jpg",
      f: () {},
      time: "30:20",
      icon: Icons.favorite,
      offer: "توصيل مجانى",
      x: 4,
    ),
    favRest(
      title: "ماك تشيز",
      url: "https://i.ibb.co/vH0420F/item12.webp",
      f: () {},
      time: "40:20",
      icon: Icons.favorite_border_outlined,
      offer: "توصيل مجانى",
      x: 5,
    ),
    favRest(
      title: "ماك ايديشن",
      url: "https://i.ibb.co/wJqxNcr/item11.jpg",
      f: () {},
      time: "20:20",
      icon: Icons.favorite_border_outlined,
      offer: "توصيل مجانى",
      x: 3,
    ),
    favRest(
      title: "ماك تشيز",
      url: "https://i.ibb.co/vH0420F/item12.webp",
      f: () {},
      time: "10:20",
      icon: Icons.favorite_border_outlined,
      offer: "توصيل مجانى",
      x: 2,
    )
  ];
  // Restrant list
  // ignore: non_constant_identifier_names
  final RestrantList = [
    restList(
      title: "ماك ايديشن",
      url: "https://i.ibb.co/sjLtWPq/Wendys.png",
      time: "30:20 دقيقة",
      offer: "توصيل مجانى",
      rate: "4.00",
    ),
    restList(
      title: "بيسترو كويت",
      url: "https://i.ibb.co/b2GC4wX/Domino.png",
      time: "30:20 دقيقة",
      offer: "توصيل مجانى",
      rate: "4.00",
    ),
    restList(
      title: "ماك ايديشن",
      url: "https://i.ibb.co/ZhRmy3c/Mc-Donalds.png",
      time: "30:20 دقيقة",
      offer: "توصيل مجانى",
      rate: "4.00",
    ),
  ];
// Special offerlist

  final count = 0.obs;
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
