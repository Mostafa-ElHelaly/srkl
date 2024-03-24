import 'package:flutter/material.dart';
import 'package:srkl_new_v1/core/constance/app_size.dart';
import 'package:srkl_new_v1/core/constance/color_assets.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_app.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_fields.dart';



class ColumnWithFieldText extends StatelessWidget {
  const ColumnWithFieldText(
      {super.key, required this.text, required this.width, this.controller});

  final String text;
  final double width;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextApp(text: text, fontSize: AppSize.defaultSize! * 1.4),
      TextFields(
        controller: controller,
        border: const BorderSide(width: 0, color: ColorAsset.mainColor),
        width: width,
        height: AppSize.defaultSize! * 4,
      )
    ]);
  }
}
