import 'package:flutter/material.dart';
import 'package:fooddelevery/core/widgets/inputs/solid_input.dart';
import 'package:fooddelevery/views/auth/auth_header.dart';
import 'package:fooddelevery/views/auth/payment_setup.dart';

import '../../core/init/metrics.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/texttheme.dart';
import '../../core/widgets/buttons/solid_button.dart';
import '../../gotonextScreen/nextscreen.dart';
import '../base.dart';

class AddressSetUp extends StatelessWidget {
  const AddressSetUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "ADDRESS SETUP",
              onTap: () => popTo(context),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: const SolidInput(
                obsecureText: true,
                label: "Name",
                hintText: "Name",
              ),
            ),
            SizedBox(
              height: hh(context, 30),
            ),
            horizontalpadding(
              context,
              child: const SolidInput(
                obsecureText: true,
                label: "Email",
                hintText: "Enter Your Email",
              ),
            ),
            SizedBox(
              height: hh(context, 30),
            ),
            horizontalpadding(
              context,
              child: const SolidInput(
                obsecureText: true,
                label: "Password",
                hintText: "Enter Your Password",
              ),
            ),
            SizedBox(
              height: hh(context, 30),
            ),
            horizontalpadding(
              context,
              child: const SolidInput(
                obsecureText: true,
                label: "ConfirmPassword",
                hintText: "Confirm Password",
              ),
            ),
            horizontalpadding(
              context,
              child: const SolidInput(
                obsecureText: true,
                label: "ADDRESS LINE 1",
                hintText: "Address",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: const SolidInput(
                obsecureText: true,
                label: "ADDRESS LINE 2",
                hintText: "Address",
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
                    label: "ZIP CODE",
                    hintText: "000-000",
                    width: (w(context) - ww(context, 60)) / 2,
                  ),
                  SolidInput(
                    obsecureText: true,
                    label: "CITY",
                    hintText: "City",
                    width: (w(context) - ww(context, 60)) / 2,
                  ),
                ],
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: const SolidInput(
                obsecureText: true,
                label: "COUNTRY",
                hintText: "Country",
              ),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: const SolidBorderedButton(
                text: "ADD ADDRESS",
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
                  onPressed: () => pushTo(context, const PaymentSetup()),
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
