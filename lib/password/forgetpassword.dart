import 'package:flutter/material.dart';
import 'package:fooddelevery/email/emailsent.dart';

import '../core/init/metrics.dart';
import '../core/theme/colors.dart';
import '../core/theme/texttheme.dart';
import '../core/widgets/buttons/solid_button.dart';
import '../core/widgets/inputs/solid_input.dart';
import '../gotonextScreen/nextscreen.dart';
import '../views/auth/auth_header.dart';
import '../views/base.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Color textSecondary = Colors.white;
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "FORGOT PASSWORD",
              onTap: () => popTo(context),
            ),
            horizontalpadding(
              context,
              child: Text(
                "We’ll send a password reset link to your email.",
                style: titleMedium14(context, textSecondary),
              ),
            ),
            SizedBox(height: hh(context, 60)),
            horizontalpadding(
              context,
              child: const SolidInput(
                obsecureText: true,
                label: "EMAIL",
                hintText: "atiqur618029@gmail.com",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidBorderedButton(
                onTap: () => pushTo(context, const EmailSent()),
                text: "SEND",
                bgColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
