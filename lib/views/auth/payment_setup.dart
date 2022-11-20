import 'package:flutter/material.dart';
import 'package:fooddelevery/core/theme/colors.dart';
import 'package:fooddelevery/core/widgets/buttons/solid_button.dart';
import 'package:fooddelevery/core/widgets/inputs/solid_input.dart';
import 'package:fooddelevery/page/mainpage.dart';

import 'package:fooddelevery/views/view_self.dart';

import '../../core/init/metrics.dart';
import '../../core/theme/texttheme.dart';
import '../../gotonextScreen/nextscreen.dart';

class PaymentSetup extends StatelessWidget {
  const PaymentSetup({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "PAYMENT SETUP",
              onTap: () => popTo(context),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: const SolidInput(
                label: "CARD NUMBER",
                hintText: "XXXX-XXXX-XXXX-XXXX",
                obsecureText: true,
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SolidInput(
                    obsecureText: true,
                    label: "EXPIRY DATE",
                    hintText: "MM/YY",
                    width: (w(context) - ww(context, 60)) / 2,
                  ),
                  SolidInput(
                    obsecureText: true,
                    label: "CVV",
                    hintText: "XXX",
                    width: (w(context) - ww(context, 60)) / 2,
                  ),
                ],
              ),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: const SolidBorderedButton(
                text: "ADD CARD",
                bgColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
              ),
            ),
            SizedBox(height: hh(context, 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => pushTo(context, const MainPage()),
                  child: Text(
                    "Skip for now",
                    style: body(context, textSecondary),
                  ),
                ),
              ],
            ),
            SizedBox(height: hh(context, 50)),
          ],
        ),
      ),
    );
  }
}
