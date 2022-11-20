import 'package:flutter/material.dart';

import 'package:fooddelevery/core/core.dart' as core;
import 'package:flutter_svg/flutter_svg.dart';

class SolidInput extends StatefulWidget {
  const SolidInput({
    Key? key,
    this.iconName,
    this.label,
    this.hintText,
    required this.obsecureText,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.width,
  }) : super(key: key);
  final String? iconName;
  final String? label;
  final String? hintText;
  final bool obsecureText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final double? width;

  @override
  State<SolidInput> createState() => _SolidInputState();
}

class _SolidInputState extends State<SolidInput> {
  core.InputState inputState = core.InputState.defaults;
  @override
  Widget build(BuildContext context) {
    Color borderColor = inputState == core.InputState.defaults
        ? core.bgPrimary(context)
        : inputState == core.InputState.focus
            ? core.AppColors.primary
            : inputState == core.InputState.error
                ? core.AppColors.error
                : core.AppColors.success;
    Color iconColor = inputState == core.InputState.defaults
        ? core.textSecondary
        : inputState == core.InputState.focus
            ? core.AppColors.primary
            : inputState == core.InputState.error
                ? core.AppColors.error
                : core.AppColors.success;
    return SizedBox(
      width: widget.width ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: core.w20(context)),
                  child: Text(
                    widget.label!,
                    style: core.label(context, core.AppColors.primary),
                  ),
                ),
                SizedBox(height: core.hh(context, 5)),
              ],
            ),
          Container(
            width: double.infinity,
            height: core.hh(context, 40),
            padding: EdgeInsets.only(
              left: core.w20(context),
              right: core.ww(context, 10),
            ),

            // ignore: sort_child_properties_last
            child: Row(
              children: [
                Expanded(
                  child: Focus(
                    onFocusChange: (val) {
                      setState(() {
                        inputState = val
                            ? core.InputState.focus
                            : core.InputState.defaults;
                      });
                    },
                    child: TextField(
                      controller: widget.controller,
                      focusNode: widget.focusNode,
                      cursorColor: core.AppColors.primary,
                      obscureText: widget.obsecureText,
                      style: core.input(context, core.textPrimary(context)),
                      onChanged: widget.onChanged,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 7),
                        hintText: widget.hintText,
                        hintStyle: core.input(context, core.textSecondary),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                if (widget.iconName != null)
                  SvgPicture.asset(
                    widget.iconName!,
                    color: iconColor,
                  ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(core.hh(context, 40)),
              color: core.bgSecondary(context),
              border: Border.all(
                color: borderColor,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
