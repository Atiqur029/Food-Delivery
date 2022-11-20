import 'package:flutter/material.dart';

import 'package:fooddelevery/core/core.dart';

class Catagoris extends StatelessWidget {
  const Catagoris({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "CATAGORIS ",
              style: label(context, textPrimary(context)),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "VIEW ALL",
                style: label(context, AppColors.primary),
              ),
            ),
            SizedBox(height: hh(context, 15)),
            SizedBox(
                width: width300 - (2 * w20(context)),
                child: Wrap(
                  spacing: w20(context),
                  runSpacing: w20(context),
                  children: List.generate(
                    buttons.length,
                    (index) => MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(horizontal: w20(context)),
                      height: hh(context, 40),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          hh(context, 40),
                        ),
                      ),
                      color: bgSecondary(context),
                      child: Text(
                        buttons[index],
                        //style: TextStyle(fontSize: 5),
                        style: body(context, textPrimary(context)),
                      ),
                    ),
                  ),
                ))
          ],
        )
      ],
    );
  }
}

List<String> buttons = [
  "Breakfast",
  "Fastfood",
  "Vegetables",
  "Fuska",
  "Lunch",
  "Dinner",
  "Pure Veg",
  "Non Veg",
];
