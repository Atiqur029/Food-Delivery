import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/core/core.dart';

List<String> brands = [
  "asset/icon/DominosPizza.svg",
  "asset/icon/BurgerKing.svg",
  "asset/icon/PizzaHut.svg",
  "asset/icon/McDonald.svg"
];

class Brands extends StatelessWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hh(context, 120),
      width: w(context),
      padding: EdgeInsets.only(
          left: ww(context, 20), top: hh(context, 20), bottom: hh(context, 20)),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) {
          return Container(
            width: ww(context, 80),
            height: ww(context, 80),
            margin: EdgeInsets.only(right: ww(context, 20)),
            decoration: BoxDecoration(
              color: bgPrimary(context),
              borderRadius: BorderRadius.circular(ww(context, 20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, hh(context, 2)),
                  blurRadius: 30,
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.asset(
                brands[index].toString(),
                width: ww(context, 44),
              ),
            ),
          );
        },
      ),
    );
  }
}
