import 'package:flutter/material.dart';


class TextApp extends StatefulWidget {
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
  State<TextApp> createState() => _TextAppState();
}

class _TextAppState extends State<TextApp> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        backgroundColor: widget.bGColor,
        color: widget.color,
        fontSize: widget.fontSize,
        fontFamily: 'Poppins',
        fontWeight: widget.fontWeight,
      ),
    );
  }
}
