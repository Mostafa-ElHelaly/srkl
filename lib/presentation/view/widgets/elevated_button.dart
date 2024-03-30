import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
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
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: widget.shape,
        backgroundColor: MaterialStatePropertyAll(widget.bGColor),
      ),
      onPressed: widget.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                backgroundColor: widget.backgroundColor,
                color: widget.textColor,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: widget.textSize),
          ),
        ],
      ),
    );
  }
}
