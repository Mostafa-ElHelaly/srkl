import 'package:flutter/material.dart';
import 'package:srkl_new_v1/core/constance/app_size.dart';
import 'package:srkl_new_v1/core/constance/color_assets.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_app.dart';


class ApplicationToolbar extends StatelessWidget
    implements PreferredSizeWidget {
  final String text;

  const ApplicationToolbar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: TextApp(text: text, fontSize: AppSize.defaultSize! * 1.6),
      leading: Builder(builder: (context) {
        return const BackButton(
          color: ColorAsset.mainColor,
        );
      }),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
