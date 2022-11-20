import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/core/init/metrics.dart';
import 'package:fooddelevery/views/model/navbaritemmodel.dart';

import '../core/theme/colors.dart';

class NavbarItem extends StatelessWidget {
  final Function()? ontap;
  final bool isActive;
  final NavbarIteamModel item;
  const NavbarItem({
    Key? key,
    this.ontap,
    required this.isActive,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: w(context) / 5,
        height: hh(context, 70),
        padding: EdgeInsets.all(ww(context, 5)),
        child: Material(
          borderRadius: BorderRadius.circular(hh(context, 5)),
          color: Colors.transparent,
          child: InkWell(
            onTap: ontap,
            borderRadius: BorderRadius.circular(hh(context, 10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  item.icon,
                  width: ww(context, 22),
                  color: isActive ? AppColors.primary : textSecondary,
                ),
                SizedBox(height: hh(context, 4)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(hh(context, 2)),
                  child: AnimatedContainer(
                    duration: const Duration(microseconds: 12),
                    width: isActive ? ww(context, 12) : 0,
                    height: isActive ? hh(context, 2) : 0,
                    color: isActive ? AppColors.primary : Colors.transparent,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
