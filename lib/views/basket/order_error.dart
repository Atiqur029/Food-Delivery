import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddelevery/core/widgets/buttons/solid_button.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';

import '../../core/init/metrics.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/texttheme.dart';
import '../base.dart';

class OrderError extends StatelessWidget {
  const OrderError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        child: Container(
          width: w(context),
          height: h(context),
          color: AppColors.error,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SOMETHING WENT WRONG",
                style: head36(context, AppColors.white),
              ),
              SizedBox(height: hh(context, 50)),
              Container(
                width: ww(context, 157),
                height: ww(context, 157),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, hh(context, 4)),
                      blurRadius: 10,
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage("asset/image/ast1.png"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: hh(context, 50)),
              horizontalpadding(
                context,
                child: Text(
                  "Something went wrong. We’ll look into the issue right away.",
                  textAlign: TextAlign.center,
                  style: body(context, AppColors.white),
                ),
              ),
              SizedBox(height: hh(context, 95)),
              horizontalpadding(
                context,
                child: SolidBorderedButton(
                  onTap: () => popTo(context),
                  text: "TRY AGAIN",
                  bgColor: AppColors.white,
                  borderColor: AppColors.white,
                  textColor: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
