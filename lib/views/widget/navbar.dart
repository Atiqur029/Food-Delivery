import 'package:flutter/material.dart';

import 'package:fooddelevery/core/core.dart';
import 'package:fooddelevery/core/providers/page_provider.dart';
import 'package:fooddelevery/page/navbariteam.dart';
import 'package:fooddelevery/views/model/navbaritemmodel.dart';
import 'package:provider/provider.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          width: w(context),
          height: hh(context, 70),
          decoration: BoxDecoration(color: bgPrimary(context), boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, -3),
              blurRadius: 30,
            ),
          ]),
          child: Row(
            children: List.generate(itemmodels.length, (index) {
              var item = itemmodels[index];
              return Consumer(
                  builder: ((context, PageProvider page, child) => NavbarItem(
                        isActive: item.id == page.p,
                        item: item,
                        ontap: () {
                          page.changePage(index);
                        },
                      )));
            }),
          ),
        ));
  }
}
