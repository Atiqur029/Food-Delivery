import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/init/metrics.dart';
import '../core/theme/colors.dart';
import '../core/theme/texttheme.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({Key? key}) : super(key: key);

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
              Text(
                "SALMON",
                style: head36(context, textPrimary(context)),
              ),
              Text(
                "The Nautilus",
                style: body(context, AppColors.secondary),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                "asset/icon/Clock.svg",
                width: ww(context, 22),
                color: AppColors.secondary,
              ),
              SizedBox(height: hh(context, 5)),
              Text(
                "34 mins",
                style: body(context, AppColors.secondary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
