import 'package:flutter/material.dart';
import 'package:fooddelevery/core/core.dart';
import 'package:fooddelevery/core/providers/onboardprovider.dart';
import 'package:fooddelevery/views/opening/onboarding/get_started.dart';
import 'package:provider/provider.dart';

import '../../../gotonextScreen/nextscreen.dart';
import '../../model/onbordaringmodel.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, OnBoardProvider state, child) {
      var item = onBorderPage(context)[state.page];

      return Container(
          height: h(context),
          width: w(context),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(item.imgPath.toString()), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Container(
                width: w(context),
                height: h(context),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.7),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              ),
              horizontalpadding(
                context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: hh(context, 50),
                    ),
                    logo(context,
                        foodStyle: head18(
                          context,
                          AppColors.white,
                        ),
                        eStyle: head18(context, AppColors.primary)),
                    const Spacer(),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 1000),
                      child: item.title,
                    ),
                    Text(
                      item.message,
                      style: body(context, AppColors.white),
                    ),
                    SizedBox(
                      height: hh(context, 50),
                    ),
                    SolidBorderedButton(
                      text: state.page == 2 ? "Get Started" : "Next",
                      bgColor: AppColors.primary,
                      borderColor: AppColors.primary,
                      textColor: AppColors.white,
                      onTap: () {
                        replaceTo(context, const GetStarted());
                        if (state.page < 2) {
                          state.changePage(state.page + 1);
                        } else {
                          replaceTo(context, const GetStarted());
                        }
                      },
                    ),
                    SizedBox(height: hh(context, 50)),
                  ],
                ),
              ),
            ],
          ));
    }));
  }

  List<OnboardingModel> onBorderPage(BuildContext context) => [
        OnboardingModel(
            id: 0,
            imgPath: "asset/image/ob0.png",
            title: SizedBox(
              width: ww(context, 129),
              child: RichText(
                  text: TextSpan(
                      style: head36(context, AppColors.white),
                      children: [
                    const TextSpan(
                      text: "AWESOME ",
                    ),
                    TextSpan(
                      text: "LOCAL ",
                      style: head36(context, AppColors.primary),
                    ),
                    const TextSpan(
                      text: "FOOD",
                    ),
                  ])),
            ),
            message:
                "Discover delicious food from the amazing restaurants near you"),
        OnboardingModel(
          id: 1,
          imgPath: "asset/image/atiqur.jpg",
          title: SizedBox(
            width: ww(context, 222),
            child: RichText(
                text: TextSpan(
                    style: head36(context, AppColors.white),
                    children: [
                  const TextSpan(
                    text: "GRAB THE BEST ",
                  ),
                  TextSpan(
                    text: "DEALS ",
                    style: head36(context, AppColors.primary),
                  ),
                  const TextSpan(
                    text: "AROUND",
                  ),
                ])),
          ),
          message:
              "Grab the best deals and discounts around and save on your every order",
        ),
      ];
}
