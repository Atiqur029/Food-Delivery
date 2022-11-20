import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/init/metrics.dart';
import '../core/theme/colors.dart';
import '../core/theme/texttheme.dart';

class QuantityPrice extends StatelessWidget {
  const QuantityPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return horizontalpadding(
      context,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              horizontalpadding(
                context,
                child: Text(
                  "QUANTITY",
                  style: label(context, AppColors.primary),
                ),
              ),
              SizedBox(height: hh(context, 5)),
              Container(
                width: ww(context, 140),
                height: hh(context, 40),
                decoration: BoxDecoration(
                  color: bgSecondary(context),
                  borderRadius: BorderRadius.circular(hh(context, 40)),
                ),
                child: horizontalpadding(
                  context,
                  child: Row(
                    children: [
                      Text(
                        "1",
                        style: head18(context, textPrimary(context)),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "asset/icon/Subtract.svg",
                            width: ww(context, 22),
                            color: AppColors.primary,
                          ),
                          SizedBox(width: w20(context)),
                          SvgPicture.asset(
                            "asset/icon/Add.svg",
                            width: ww(context, 22),
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "SUB TOTAL",
                style: label(context, textPrimary(context)),
              ),
              SizedBox(height: hh(context, 10)),
              Text(
                "\$ 15.00",
                style: head24(context, AppColors.primary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
