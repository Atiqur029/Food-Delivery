import 'package:flutter/material.dart';
import 'package:fooddelevery/core/theme/colors.dart';

import '../../theme/texttheme.dart';

Widget logo(BuildContext context, {TextStyle? foodStyle, TextStyle? eStyle}) =>
    RichText(
      text: TextSpan(
        style: foodStyle ?? head36(context, textPrimary(context)),
        children: [
          const TextSpan(
            text: "FOOD-",
          ),
          TextSpan(
            text: "E",
            style: eStyle ?? head36(context, AppColors.primary),
          ),
        ],
      ),
    );
