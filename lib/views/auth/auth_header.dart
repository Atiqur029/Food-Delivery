import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/core/theme/colors.dart';

import '../../core/init/metrics.dart';
import '../../core/theme/texttheme.dart';

class AuthPageHeader extends StatelessWidget {
  const AuthPageHeader({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: hh(context, 50) - ww(context, 10)),
        Padding(
          padding: EdgeInsets.only(left: ww(context, 10)),
          child: Material(
            borderRadius: BorderRadius.circular(hh(context, 50)),
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(hh(context, 50)),
              child: Container(
                padding: EdgeInsets.all(ww(context, 10)),
                child: SvgPicture.asset(
                  "asset/icon/Close.svg",
                  width: ww(context, 22),
                  color: textPrimary(context),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: hh(context, 40)),
        horizontalpadding(
          context,
          child: Text(
            text,
            style: head36(context, textPrimary(context)),
          ),
        ),
        SizedBox(height: hh(context, 10)),
      ],
    );
  }
}
