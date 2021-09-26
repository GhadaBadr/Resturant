import 'package:flutter/material.dart';
import 'package:rest/app/modules/home/controllers/home_controller.dart';

// ignore: camel_case_types
class brand extends StatelessWidget {
  final String title;

  const brand({required this.title});

  @override
  Widget build(BuildContext context) {
    HomeController controller = HomeController();
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Expanded(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: controller.BrandList.map(
                  (e) => Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        color: Theme.of(context).colorScheme.primary,
                        border: Border.all(
                            width: 1.0,
                            color: Theme.of(context).colorScheme.secondary)),
                    margin: EdgeInsets.only(right: 5, left: 5),
                    child: Container(
                      margin: EdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Image.network(
                              e.title,
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ).toList(),
              ))),
    );
  }
}
