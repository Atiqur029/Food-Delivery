import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/core/core.dart';
import 'package:fooddelevery/views/model/settingitemmodl.dart';

class SettingItem extends StatelessWidget {
  final SettingItemModel item;
  final Function()? onTap;
  const SettingItem({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        elevation: 0,
        child: InkWell(
            onTap: onTap,
            child: Container(
                width: w(context),
                height: hh(context, 52),
                padding: EdgeInsets.symmetric(horizontal: w20(context)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                item.icon.toString(),
                                width: ww(context, 22),
                                color: item.name == "Logout"
                                    ? AppColors.error
                                    : AppColors.primary,
                              ),
                              SizedBox(
                                width: ww(context, 20),
                              ),
                              Text(
                                item.name,
                                style: body(
                                    context,
                                    item.name == "Logout"
                                        ? AppColors.error
                                        : textPrimary(context)),
                              ),
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset(
                        "asset/icon/Right.svg",
                        width: ww(context, 22),
                        color: item.name == "Logout"
                            ? AppColors.error
                            : textPrimary(context),
                      ),
                    ]))));
  }
}
