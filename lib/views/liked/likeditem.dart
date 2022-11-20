import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fooddelevery/core/core.dart';

class LikedItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  const LikedItem({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return horizontalpadding(context,
        child: Row(
          children: [
            Container(
                width: ww(context, 150),
                height: hh(context, 150),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      ww(context, 10),
                    ),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover))),
            SizedBox(
              width: w20(context),
            ),
            SizedBox(
              height: hh(context, 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    name,
                    style: body(context, textPrimary(context)),
                  ),
                  Text(
                    "\$ $price",
                    style: head24(context, AppColors.primary),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: ww(context, 22),
                        height: hh(context, 22),
                        padding: EdgeInsets.all(ww(context, 2)),
                        decoration: BoxDecoration(
                          color: AppColors.error,
                          borderRadius: BorderRadius.circular(ww(context, 5)),
                        ),
                        child: SvgPicture.asset(
                          "asset/icon/Trash.svg",
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(height: hh(context, 30)),
                      Container(
                        width: ww(context, 22),
                        height: hh(context, 22),
                        padding: EdgeInsets.all(ww(context, 2)),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(ww(context, 5)),
                        ),
                        child: SvgPicture.asset(
                          "asset/icon/Basket.svg",
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
