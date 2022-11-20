import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/core/theme/colors.dart';
import 'package:fooddelevery/core/widgets/buttons/solid_button.dart';
import 'package:fooddelevery/core/widgets/inputs/solid_input.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';

import '../../core/init/metrics.dart';
import '../../core/theme/texttheme.dart';
import '../base.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
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
              "ADD NEW ADDRESSES",
              style: head36(context, textPrimary(context)),
            ),
          ),
          const Spacer(),
          horizontalpadding(
            context,
            child: const SolidInput(
              obsecureText: true,
              label: "ADDRESS LINE 1",
              hintText: "Address",
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: const SolidInput(
              obsecureText: true,
              label: "ADDRESS LINE 2",
              hintText: "Address",
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SolidInput(
                  obsecureText: true,
                  label: "ZIP CODE",
                  hintText: "000-000",
                  width: (w(context) - ww(context, 60)) / 2,
                ),
                SolidInput(
                  obsecureText: true,
                  label: "CITY",
                  hintText: "City",
                  width: (w(context) - ww(context, 60)) / 2,
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: const SolidInput(
              obsecureText: true,
              label: "COUNTRY",
              hintText: "Country",
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => popTo(context),
              text: "ADD NEW ADDRESS",
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
