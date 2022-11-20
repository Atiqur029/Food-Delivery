import 'package:flutter/material.dart';

import 'package:fooddelevery/core/core.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';

import 'package:fooddelevery/views/logg/loggin.dart';

import '../../logg/register.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: w(context),
            height: h(context),
            color: bgPrimary(context),
            padding: EdgeInsets.symmetric(
              horizontal: w20(context),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: hh(context, 50)),
                logo(
                  context,
                  foodStyle: head18(context, textPrimary(context)),
                  eStyle: head18(context, AppColors.primary),
                ),
                SizedBox(height: hh(context, 50)),
                RichText(
                  text: TextSpan(
                    style: head36(context, textPrimary(context)),
                    children: [
                      const TextSpan(
                        text: "GET ",
                      ),
                      TextSpan(
                        text: "STARTED",
                        style: head36(context, AppColors.primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: hh(context, 10)),
                Text(
                  "Get started and enjoy the awesome local food right at your home.",
                  style: titleMedium14(context, textPrimary(context)),
                ),
                const Spacer(),
                SolidBorderedButton(
                  onTap: () => pushTo(context, const LogginScreen()),
                  text: "LOGIN",
                  bgColor: AppColors.primary,
                  borderColor: AppColors.primary,
                  textColor: AppColors.white,
                ),
                SizedBox(height: hh(context, 30)),
                SolidBorderedButton(
                  onTap: () => pushTo(context, const SignUp()),
                  text: "REGISTER",
                  bgColor: bgPrimary(context),
                  borderColor: AppColors.primary,
                  textColor: AppColors.primary,
                ),
                SizedBox(height: hh(context, 50)),
              ],
            )));
  }
}
