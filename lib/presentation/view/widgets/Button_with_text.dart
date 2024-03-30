import 'package:flutter/material.dart';

class CostumTextButton extends StatefulWidget {
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
  State<CostumTextButton> createState() => _CostumTextButtonState();
}

class _CostumTextButtonState extends State<CostumTextButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Text(
        widget.text,
        style: TextStyle(
            decoration: widget.textUnderLine,
            decorationColor: widget.textUnderLineColor,
            backgroundColor: widget.backgroundColor,
            color: widget.textColor,
            fontFamily: 'Poppins',
            fontSize: widget.textSize),
      ),
    );
  }
}
