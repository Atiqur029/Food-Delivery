import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/init/metrics.dart';
import '../../core/theme/colors.dart';

import '../../core/widgets/buttons/solid_button.dart';

import '../../page/jumbotron.dart';
import '../../page/productdescription.dart';
import '../../page/productheader.dart';
import '../../page/quantyprice.dart';
import '../base.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Base(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Jumbotron(),
            SizedBox(height: hh(context, 20)),
            const ProductHeader(),
            SizedBox(height: hh(context, 30)),
            const ProductDescription(),
            SizedBox(height: hh(context, 40)),
            const QuantityPrice(),
            const Spacer(),
            horizontalpadding(
              context,
              child: const SolidBorderedButton(
                text: "ADD TO BASKET",
                bgColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
              ),
            ),
            SizedBox(height: hh(context, 40)),
          ],
        ),
      ),
    );
  }
}
