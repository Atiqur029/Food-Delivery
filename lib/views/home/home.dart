import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/core/init/metrics.dart';
import 'package:fooddelevery/core/theme/colors.dart';
import 'package:fooddelevery/views/widget/brands.dart';

import '../../core/theme/texttheme.dart';
import '../widget/compaign.dart';
import '../widget/recommented.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: bigBody(context, textPrimary(context)),
                    children: [
                      const TextSpan(
                        text: "Hello, ",
                      ),
                      TextSpan(
                        text: "Atiqur ",
                        style: bigBody(context, AppColors.primary),
                      ),
                      const TextSpan(
                        text: "!",
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "HOME",
                      style: label(context, AppColors.secondary),
                    ),
                    SizedBox(width: ww(context, 5)),
                    SvgPicture.asset(
                      'asset/icon/Location.svg',
                      width: ww(context, 22),
                      color: AppColors.secondary,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 10)),
          const Campaign(),
          SizedBox(height: hh(context, 20)),
          horizontalpadding(
            context,
            child: Text(
              "RECOMMENDED FOR YOU",
              style: label(context, textPrimary(context)),
            ),
          ),
          SizedBox(height: hh(context, 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              RecpmmendedItem(
                img: "asset/image/im1.png",
                name: "Egg Salad",
                price: "5.00",
              ),
              RecpmmendedItem(
                img: "asset/image/im2.png",
                name: "Grilled Salmon",
                price: "15.00",
              ),
            ],
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: Text(
              "RESTAURANTS",
              style: label(context, textPrimary(context)),
            ),
          ),
          const Brands(),
          SizedBox(height: hh(context, 20)),
          horizontalpadding(
            context,
            child: Text(
              "POPULAR IN YOUR AREA",
              style: label(context, textPrimary(context)),
            ),
          ),
          SizedBox(height: hh(context, 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              RecpmmendedItem(
                img: "asset/image/im2.png",
                name: "Egg Salad",
                price: "5.00",
              ),
              RecpmmendedItem(
                img: "asset/image/im1.png",
                name: "Grilled Salmon",
                price: "15.00",
              ),
            ],
          ),
          SizedBox(height: hh(context, 100)),
        ],
      ),
    );
  }
}
