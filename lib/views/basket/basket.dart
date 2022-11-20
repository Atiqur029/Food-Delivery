// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:fooddelevery/core/init/metrics.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';
import 'package:fooddelevery/views/basket/confirm_checkout.dart';

import '../../core/theme/colors.dart';
import '../../core/theme/texttheme.dart';
import '../../core/widgets/buttons/solid_button.dart';
import '../../page/basketitem.dart';

class Basket extends StatefulWidget {
  const Basket({super.key});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return horizontalpadding(context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: hh(context, 50),
            ),
            Text(
              "BASKET",
              style: head36(context, textPrimary(context)),
            ),
            SizedBox(height: hh(context, 30)),
            const BasketItem(
              img: "asset/image/im1.png",
              name: "Grilled",
              price: "50.00",
              piece: "3",
            ),
            const BasketItem(
              img: "asset/image/im2.png",
              name: "Egg Salad",
              price: "50.00",
              piece: "4",
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TOTAL",
                  style: head18(context, textPrimary(context)),
                ),
                Text(
                  "\$ 100.00",
                  style: head36(context, AppColors.secondary),
                ),
              ],
            ),
            SizedBox(height: hh(context, 30)),
            SolidBorderedButton(
              onTap: () => pushTo(context, const ConfirmCheckout()),
              text: "PROCEED TO CHECKOUT",
              bgColor: AppColors.primary,
              borderColor: AppColors.primary,
              textColor: AppColors.white,
            ),
            SizedBox(height: hh(context, 100)),
          ],
        ));
  }
}
