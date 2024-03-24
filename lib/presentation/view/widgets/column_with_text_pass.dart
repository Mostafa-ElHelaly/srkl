import 'package:flutter/material.dart';
import 'package:srkl_new_v1/core/constance/app_size.dart';
import 'package:srkl_new_v1/core/constance/color_assets.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_app.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_fields.dart';

class ColumnWithFieldTextWithPass extends StatefulWidget {
  const ColumnWithFieldTextWithPass(
      {super.key, required this.text, required this.width, this.controller});

  final String text;
  final double width;
  final TextEditingController? controller;

  @override
  State<ColumnWithFieldTextWithPass> createState() =>
      _columnWithFieldTextWithPass();
}

bool isVisible = true;

class _columnWithFieldTextWithPass extends State<ColumnWithFieldTextWithPass> {
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
        border: const BorderSide(width: 0, color: ColorAsset.mainColor),
        width: widget.width,
        height: AppSize.defaultSize! * 4,
      )
    ]);
  }
}
