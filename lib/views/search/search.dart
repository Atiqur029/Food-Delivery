import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/core/core.dart';

import 'package:fooddelevery/page/catagori.dart';
import 'package:fooddelevery/views/model/recent.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: horizontalpadding(context,
          child: Column(
            children: [
              SizedBox(
                height: hh(context, 70),
              ),
              const SolidInput(
                obsecureText: true,
                label: "Search",
                hintText: "Cuisine/Dish",
              ),
              SizedBox(height: hh(context, 25)),
              const Catagoris(),
              SizedBox(height: hh(context, 45)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "RECENTS",
                    style: label(context, textPrimary(context)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "VIEW ALL",
                      style: label(context, AppColors.primary),
                    ),
                  ),
                ],
              ),
              SizedBox(height: hh(context, 15)),
              Column(
                children: List.generate(recents.length, (index) {
                  return Container(
                    height: ww(context, 22),
                    margin: EdgeInsets.only(bottom: w20(context)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "asset/icon/History.svg",
                              width: ww(context, 22),
                              color: textSecondary,
                            ),
                            SizedBox(width: w20(context)),
                            Text(
                              recents[index],
                              style: body(context, textSecondary),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          "asset/icon/Close.svg",
                          width: ww(context, 22),
                          color: textSecondary,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          )),
    );
  }
}
