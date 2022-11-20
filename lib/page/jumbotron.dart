import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/core/theme/colors.dart';

import '../core/init/metrics.dart';
import '../gotonextScreen/nextscreen.dart';

class Jumbotron extends StatefulWidget {
  const Jumbotron({super.key});

  @override
  State<Jumbotron> createState() => _JumbotronState();
}

class _JumbotronState extends State<Jumbotron> {
  PageController controller = PageController();
  int p = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hh(context, 300),
      child: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (val) {
              setState(() {
                p = val;
              });
            },
            children: [
              SizedBox(
                width: w(context),
                height: hh(context, 300),
                child: Image.asset(
                  "asset/image/im2.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: w(context),
                height: hh(context, 300),
                child: Image.asset(
                  "asset/image/im2.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: w(context),
                height: hh(context, 300),
                child: Image.asset(
                  "asset/image/im2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            top: hh(context, 50),
            left: w20(context),
            right: w20(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(hh(context, 5)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: GestureDetector(
                      onTap: () => popTo(context),
                      child: Container(
                        width: ww(context, 32),
                        height: ww(context, 32),
                        padding: EdgeInsets.all(hh(context, 2)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(hh(context, 5)),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: SvgPicture.asset(
                          "asset/icon/Left.svg",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(hh(context, 5)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: ww(context, 32),
                      height: ww(context, 32),
                      padding: EdgeInsets.all(hh(context, 2)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(hh(context, 5)),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: SvgPicture.asset(
                        "asset/icon/Options.svg",
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: hh(context, 10),
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 240),
                  width: p == 0 ? ww(context, 20) : ww(context, 10),
                  height: hh(context, 2),
                  decoration: BoxDecoration(
                    color: p == 0 ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.circular(hh(context, 2)),
                  ),
                ),
                SizedBox(width: ww(context, 5)),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 240),
                  width: p == 1 ? ww(context, 20) : ww(context, 10),
                  height: hh(context, 2),
                  decoration: BoxDecoration(
                    color: p == 1 ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.circular(hh(context, 2)),
                  ),
                ),
                SizedBox(width: ww(context, 5)),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 240),
                  width: p == 2 ? ww(context, 20) : ww(context, 10),
                  height: hh(context, 2),
                  decoration: BoxDecoration(
                    color: p == 2 ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.circular(hh(context, 2)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
