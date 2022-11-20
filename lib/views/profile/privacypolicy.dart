import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelevery/core/init/metrics.dart';
import 'package:fooddelevery/core/theme/colors.dart';
import 'package:fooddelevery/core/theme/texttheme.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';
import 'package:fooddelevery/views/base.dart';
import 'package:fooddelevery/views/profile/TermsAndConditions.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: SingleChildScrollView(
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
                "PRIVACY POLICY",
                style: head36(context, textPrimary(context)),
              ),
            ),
            SizedBox(height: hh(context, 50)),
            ...List.generate(5, (index) => const RuleItem()),
          ],
        ),
      ),
    );
  }
}
