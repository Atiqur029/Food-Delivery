import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/core/init/metrics.dart';
import 'package:fooddelevery/core/theme/colors.dart';
import 'package:fooddelevery/core/theme/texttheme.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';
import 'package:fooddelevery/views/base.dart';

class ContactSupport extends StatelessWidget {
  const ContactSupport({Key? key}) : super(key: key);

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
              "CONTACT SUPPORT",
              style: head36(context, textPrimary(context)),
            ),
          ),
          SizedBox(height: hh(context, 50)),
          Container(
            width: w(context),
            padding: EdgeInsets.symmetric(horizontal: w20(context)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "asset/icon/Phone.svg",
                  width: ww(context, 22),
                  color: AppColors.primary,
                ),
                SizedBox(width: w20(context)),
                Text(
                  "+01740070497",
                  style: body(context, textPrimary(context)),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 30)),
          Container(
            width: w(context),
            padding: EdgeInsets.symmetric(horizontal: w20(context)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "asset/icon/Email Sent.svg",
                  width: ww(context, 22),
                  color: AppColors.primary,
                ),
                SizedBox(width: w20(context)),
                Text(
                  "atiqur8061029@gmail.com",
                  style: body(context, textPrimary(context)),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 30)),
          Container(
            width: w(context),
            padding: EdgeInsets.symmetric(horizontal: w20(context)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "asset/icon/Chat.svg",
                  width: ww(context, 22),
                  color: AppColors.primary,
                ),
                SizedBox(width: w20(context)),
                Text(
                  "chat on WhatsApp",
                  style: body(context, textPrimary(context)),
                ),
                Text(
                  "My Whats app Number:01740070497",
                  style: body(context, textPrimary(context)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
