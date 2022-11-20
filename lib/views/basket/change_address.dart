import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelevery/core/init/metrics.dart';
import 'package:fooddelevery/core/theme/colors.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';
import 'package:fooddelevery/views/base.dart';
import 'package:fooddelevery/views/basket/add_new_address.dart';

import '../../core/theme/texttheme.dart';
import '../../core/widgets/buttons/solid_button.dart';

class ChangeAddress extends StatelessWidget {
  const ChangeAddress({Key? key}) : super(key: key);

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
              "MY ADDRESSES",
              style: head36(context, textPrimary(context)),
            ),
          ),
          const Spacer(),
          horizontalpadding(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PARTY PLACE",
                  style: label(context, AppColors.secondary),
                ),
                SizedBox(height: hh(context, 10)),
                Text(
                  "Community Center in Mirpur Dhaka 1216. Here you can find all the community center near",
                  style: body(context, textPrimary(context)),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OFFICE",
                  style: label(context, textPrimary(context)),
                ),
                SizedBox(height: hh(context, 10)),
                Text(
                  "Foodpanda Head Office - Corporate office in Dhaka, Bangladesh ",
                  style: body(context, textSecondary),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "HOME",
                  style: label(context, textPrimary(context)),
                ),
                SizedBox(height: hh(context, 10)),
                Text(
                  "Community Center in Mirpur Dhaka 1216. Here you can find all the community center near",
                  style: body(context, textSecondary),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => pushTo(context, const AddNewAddress()),
              text: "ADD NEW ADDRESS",
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
