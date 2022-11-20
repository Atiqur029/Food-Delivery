import 'package:flutter/material.dart';
import 'package:fooddelevery/core/core.dart';
import 'package:fooddelevery/core/providers/setting_page_provider.dart';
import 'package:fooddelevery/gotonextScreen/nextscreen.dart';
import 'package:fooddelevery/page/settingitem.dart';
import 'package:fooddelevery/views/base.dart';
import 'package:fooddelevery/views/model/settingitemmodl.dart';
import 'package:fooddelevery/views/profile/settings_base.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Base(
        child: Column(
      children: [
        SizedBox(height: hh(context, 80)),
        Container(
          width: ww(context, 80),
          height: hh(context, 80),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary, width: 5),
              image: const DecorationImage(
                  image: AssetImage("asset/image/atiqur.jpg"),
                  fit: BoxFit.cover)),
        ),
        Text(
          "Atiqur Rahman Sumon",
          style: body(context, textPrimary(context)),
        ),
        const Spacer(),
        ...List.generate(settingItem.length, (index) {
          var item = settingItem[index];
          return SettingItem(
            item: item,
            onTap: () {
              final setProvider =
                  Provider.of<SettingProvider>(context, listen: false);
              if (index != settingItem.length - 1) {
                setProvider.changePage(item.id);
                pushTo(context, const SettingsBase());
                pushTo(context, const SettingsBase());
              }
            },
          );
        }),
        SizedBox(height: hh(context, 70)),
      ],
    ));
  }
}
