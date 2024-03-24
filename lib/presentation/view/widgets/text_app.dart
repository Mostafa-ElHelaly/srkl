import 'package:flutter/material.dart';

import '../../../core/constance/color_assets.dart';

class TextApp extends StatelessWidget {
  const TextApp({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.color,
    this.bGColor,
  });

  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final Color? bGColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        backgroundColor: bGColor,
        color: color,
        fontSize: fontSize,
        // fontFamily: ColorAsset.mainFont,
        fontWeight: fontWeight,
      ),
    );
  }
}
