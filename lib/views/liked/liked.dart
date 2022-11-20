import 'package:flutter/material.dart';

import 'package:fooddelevery/core/core.dart';
import 'package:fooddelevery/views/liked/likeditem.dart';

class Liked extends StatelessWidget {
  const Liked({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: horizontalpadding(context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      "LIKED",
                      style: head36(context, textPrimary(context)),
                    ),
                  ),
                ),
                SizedBox(height: hh(context, 30)),
                const LikedItem(
                    image: "asset/image/im2.png",
                    name: "Egg Salad",
                    price: "10"),
                SizedBox(height: hh(context, 47)),
                const LikedItem(
                    image: "asset/image/im1.png", name: "Griled", price: "25"),
              ],
            )),
      ),
    );
  }
}
