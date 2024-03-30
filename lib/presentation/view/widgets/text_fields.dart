import 'package:flutter/material.dart';
import 'package:srkl_new_v1/core/constance/color_assets.dart';


class TextFields extends StatefulWidget {
  const TextFields({
    super.key,
    this.sIcon,
    this.pIcon,
    this.obscureText = false,
    this.width,
    this.height,
    this.text,
    required this.border,
    this.controller,
    this.readOnly = false,
    this.onTap,
  });

  final Widget? sIcon;
  final Widget? pIcon;
  final bool obscureText;
  final double? width;
  final double? height;
  final String? text;
  final bool readOnly;
  final BorderSide border;
  final TextEditingController? controller;
  final void Function()? onTap;

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TextField(
        controller: widget.controller,
        onTap: widget.onTap,
        readOnly: widget.readOnly,
        obscureText: widget.obscureText,
        cursorColor: ColorAsset.mainColor,
        decoration: InputDecoration(
          hintText: widget.text,
          suffixIcon: widget.sIcon,
          prefixIcon: widget.pIcon,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          fillColor: const Color.fromRGBO(246, 246, 246, 1).withOpacity(.5),
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorAsset.mainColor),
          ),
          border: OutlineInputBorder(borderSide: widget.border),
        ),
      ),
    );
  }
}
