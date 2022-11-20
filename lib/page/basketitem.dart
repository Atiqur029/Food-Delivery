import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import '../core/init/metrics.dart';
import '../core/theme/colors.dart';
import '../core/theme/texttheme.dart';

class BasketItem extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  final String piece;

  const BasketItem(
      {super.key,
      required this.img,
      required this.name,
      required this.price,
      required this.piece});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: ww(context, 80),
              height: ww(context, 80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ww(context, 10)),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: w20(context)),
            SizedBox(
              height: hh(context, 80),
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
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: ww(context, 22),
              height: ww(context, 22),
              padding: EdgeInsets.all(ww(context, 2)),
              decoration: BoxDecoration(
                color: AppColors.error,
                borderRadius: BorderRadius.circular(ww(context, 5)),
              ),
              child: SvgPicture.asset(
                'asset/icon/Trash.svg',
                color: AppColors.white,
              ),
            ),
            SizedBox(height: hh(context, 30)),
            Row(
              children: [
                Text(
                  piece,
                  style: body(context, textPrimary(context)),
                ),
                SizedBox(width: ww(context, 5)),
                SvgPicture.asset(
                  "asset/icon/Dropdown.svg",
                  color: textPrimary(context),
                  width: ww(context, 22),
                ),
              ],
            ),
          ],
        ),
      ],
    );
    ;
  }
}
