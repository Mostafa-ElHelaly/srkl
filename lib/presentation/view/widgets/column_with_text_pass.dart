import 'package:flutter/material.dart';
import '../../../core/constance/app_size.dart';
import '../../../core/constance/color_assets.dart';
import 'text_app.dart';
import 'text_fields.dart';

class ColumnWithFieldTextWithPass extends StatefulWidget {
  const ColumnWithFieldTextWithPass(
      {super.key, required this.text, required this.width, this.controller});

  final String text;
  final double width;
  final TextEditingController? controller;

  @override
  State<ColumnWithFieldTextWithPass> createState() =>
      _columnWithFieldTextState();
}

bool isVisible = true;

class _columnWithFieldTextState extends State<ColumnWithFieldTextWithPass> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextApp(text: widget.text, fontSize: AppSize.defaultSize! * 1.4),
      TextFields(
        controller: widget.controller,
        obscureText: isVisible,
        sIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
          child: InkWell(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Icon(isVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined)),
        ),
        border: BorderSide(width: 0, color: ColorAsset.mainColor),
        width: widget.width,
        height: AppSize.defaultSize! * 4,
      )
    ]);
  }
}
