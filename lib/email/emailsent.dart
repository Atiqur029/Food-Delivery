import 'package:flutter/material.dart';

import 'package:fooddelevery/core/core.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';
import 'package:fooddelevery/views/auth/auth_header.dart';
import 'package:fooddelevery/views/base.dart';

import '../password/reset.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Base(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthPageHeader(
            text: "Email Sent",
            onTap: (() => popTo(context)),
          ),
          horizontalpadding(context,
              child: RichText(
                  text:
                      TextSpan(style: body(context, textSecondary), children: [
                TextSpan(
                  text: "user@email.com ",
                  style: body(context, AppColors.primary),
                ),
                const TextSpan(
                  text:
                      "for verification. Check your email for the verification link.",
                ),
              ]))),
          const Spacer(),
          horizontalpadding(
            context,
            child: Text(
              "00:38",
              style: head18(context, AppColors.secondary),
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: Text(
              "Did not receive the email yet?",
              style: body(context, textPrimary(context)),
            ),
          ),
          horizontalpadding(
            context,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Resend",
                style: body(context, AppColors.primary),
              ),
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => pushTo(context, const ResetPassword()),
              text: "OPEN EMAIL APP",
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
