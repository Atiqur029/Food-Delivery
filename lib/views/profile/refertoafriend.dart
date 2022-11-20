import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelevery/core/theme/colors.dart';
import 'package:fooddelevery/core/theme/texttheme.dart';
import 'package:fooddelevery/core/widgets/buttons/solid_button.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';
import 'package:fooddelevery/views/view_self.dart';

import '../../core/init/metrics.dart';

class ReferToAFriend extends StatelessWidget {
  const ReferToAFriend({Key? key}) : super(key: key);

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
              "REFER TO A FRIEND",
              style: head36(context, textPrimary(context)),
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                horizontalpadding(
                  context,
                  child: Text(
                    "REFER CODE",
                    style: label(context, AppColors.primary),
                  ),
                ),
                SizedBox(height: hh(context, 5)),
                Container(
                  height: hh(context, 40),
                  padding: EdgeInsets.only(
                      left: w20(context), right: w20(context) / 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(hh(context, 40)),
                    color: bgSecondary(context),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Q8F4-B6S2-S6B3-N6Z5",
                        style: body(context, textSecondary),
                      ),
                      SvgPicture.asset(
                        "asset/icon/Copy.svg",
                        width: ww(context, 22),
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => popTo(context),
              text: "SHARE THIS APP",
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
