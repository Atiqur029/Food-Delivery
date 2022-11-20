import 'package:flutter/material.dart';
import 'package:fooddelevery/core/providers/page_provider.dart';
import 'package:fooddelevery/views/base.dart';
import 'package:fooddelevery/views/basket/basket.dart';
import 'package:fooddelevery/views/search/search.dart';
import 'package:fooddelevery/views/widget/navbar.dart';
import 'package:provider/provider.dart';

import '../views/home/home.dart';
import '../views/liked/liked.dart';
import '../views/profile/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, PageProvider page, child) {
      return Base(
          child: Stack(
        children: [pages[page.p], const Navbar()],
      ));
    }));
  }
}

List<Widget> pages = [
  const Home(),
  const Search(),
  const Basket(),
  const Liked(),
  const Profile(),
];
