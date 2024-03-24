import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.textColor,
    this.backgroundColor,
    required this.textSize,
    this.onTap,
    this.bGColor,
    this.shape,
  });

  final String text;
  final MaterialStateProperty<OutlinedBorder?>? shape;
  final Color textColor;
  final Color? backgroundColor;
  final Color? bGColor;
  final double textSize;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: shape,
        backgroundColor: MaterialStatePropertyAll(bGColor),
      ),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            style: TextStyle(
                backgroundColor: backgroundColor,
                color: textColor,
                // fontFamily: Asset.mainFont,
                fontWeight: FontWeight.bold,
                fontSize: textSize),
          ),
        ],
      ),
    );
  }
}
