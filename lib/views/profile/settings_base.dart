import 'package:flutter/material.dart';
import 'package:fooddelevery/core/providers/setting_page_provider.dart';
import 'package:fooddelevery/views/base.dart';
import 'package:fooddelevery/views/basket/change_address.dart';
import 'package:fooddelevery/views/basket/change_payment.dart';
import 'package:fooddelevery/views/profile/AccountAndProfile.dart';
import 'package:fooddelevery/views/profile/ContactSupport.dart';
import 'package:fooddelevery/views/profile/OrderHistory.dart';
import 'package:fooddelevery/views/profile/PrivacyPolicy.dart';
import 'package:fooddelevery/views/profile/TermsAndConditions.dart';

import 'package:fooddelevery/views/profile/WriteAReview.dart';
import 'package:provider/provider.dart';

import 'ReferToAFriend.dart';

class SettingsBase extends StatelessWidget {
  const SettingsBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, SettingProvider page, child) {
        return Base(child: settingsWidgets[page.page]);
      },
    );
  }
}

List<Widget> settingsWidgets = [
  const AccountAndProfile(),
  const ChangePayment(),
  const ChangeAddress(),
  const OrderHistory(),
  const ContactSupport(),
  const ReferToAFriend(),
  const WriteAReview(),
  const TermsAndConditions(),
  const PrivacyPolicy(),
];
