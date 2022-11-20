import 'package:flutter/material.dart';

import '../core/init/metrics.dart';
import '../core/theme/colors.dart';
import '../core/theme/texttheme.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return horizontalpadding(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "DESCRIPTION",
            style: head18(context, textPrimary(context)),
          ),
          SizedBox(height: hh(context, 10)),
          Text(
            "Non odit iusto delectus maxime sit placeat voluptatum dolorem. Dolores quos rerum iusto. Beatae totam ab veritatis aliquid tenetur qui ut. Quia ut dolorum enim et. Exercitationem occaecati eum est ex qui harum aliquam.",
            style: body(context, textSecondary),
          ),
        ],
      ),
    );
  }
}
