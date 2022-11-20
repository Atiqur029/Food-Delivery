import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelevery/core/init/metrics.dart';
import 'package:fooddelevery/core/theme/colors.dart';
import 'package:fooddelevery/core/widgets/buttons/solid_button.dart';
import 'package:fooddelevery/core/widgets/inputs/solid_input.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';
import 'package:fooddelevery/views/base.dart';
import 'package:fooddelevery/views/profile/ChangePassword.dart';

import '../../core/theme/texttheme.dart';

class AccountAndProfile extends StatelessWidget {
  const AccountAndProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Base(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hh(context, 50)),
          Padding(
            padding: EdgeInsets.only(left: ww(context, 10)),
            child: Material(
              borderRadius: BorderRadius.circular(hh(context, 50)),
              color: Colors.transparent,
              child: InkWell(
                onTap: () => popTo(context),
                borderRadius: BorderRadius.circular(hh(context, 50)),
                child: Container(
                  padding: EdgeInsets.all(ww(context, 10)),
                  child: SvgPicture.asset(
                    "asset/icon/Left.svg",
                    width: ww(context, 22),
                    color: textPrimary(context),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Text(
              "ACCOUNT AND PROFILE",
              style: head36(context, textPrimary(context)),
            ),
          ),
          SizedBox(height: hh(context, 15)),
          Material(
            color: Colors.transparent,
            elevation: 0,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: w(context),
                height: hh(context, 52),
                padding: EdgeInsets.symmetric(horizontal: w20(context)),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "asset/icon/Trash.svg",
                      width: ww(context, 22),
                      color: AppColors.error,
                    ),
                    SizedBox(width: w20(context)),
                    Text(
                      "Delete Account",
                      style: body(context, AppColors.error),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          horizontalpadding(
            context,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SolidInput(
                  obsecureText: true,
                  label: "FIRST NAME",
                  hintText: "John",
                  width: (w(context) - ww(context, 60)) / 2,
                ),
                SolidInput(
                  obsecureText: true,
                  label: "LAST NAME",
                  hintText: "Doe",
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
              label: "EMAIL",
              hintText: "atiqur8061029@email.com",
            ),
          ),
          SizedBox(height: hh(context, 35)),
          Material(
            color: Colors.transparent,
            elevation: 0,
            child: InkWell(
              onTap: () => pushTo(context, const ChangePassword()),
              child: Container(
                width: w(context),
                height: hh(context, 52),
                padding: EdgeInsets.symmetric(horizontal: w20(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "asset/icon/Password.svg",
                          width: ww(context, 22),
                          color: AppColors.primary,
                        ),
                        SizedBox(width: ww(context, 20)),
                        Text(
                          "Change Password",
                          style: body(context, textPrimary(context)),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "asset/icon/Right.svg",
                      width: ww(context, 22),
                      color: textPrimary(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: hh(context, 35)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => popTo(context),
              text: "UPDATE",
              bgColor: AppColors.primary,
              borderColor: AppColors.primary,
              textColor: AppColors.white,
            ),
          ),
          SizedBox(height: hh(context, 50)),
        ],
      ),
    );
  }
}
