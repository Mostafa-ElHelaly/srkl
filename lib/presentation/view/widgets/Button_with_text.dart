import 'package:flutter/material.dart';

import '../../../core/constance/color_assets.dart';

class CostumTextButton extends StatelessWidget {
  const CostumTextButton(
      {super.key,
      required this.text,
      required this.textColor,
      this.backgroundColor,
      required this.textSize,
      this.textUnderLine,
      this.textUnderLineColor,
      this.onTap});

  final String text;
  final Color textColor;
  final Color? backgroundColor;
  final double textSize;
  final TextDecoration? textUnderLine;
  final Color? textUnderLineColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
            decoration: textUnderLine,
            decorationColor: textUnderLineColor,
            backgroundColor: backgroundColor,
            color: textColor,
            // fontFamily: ColorAsset.mainFont,
            fontSize: textSize),
      ),
    );
  }
}
