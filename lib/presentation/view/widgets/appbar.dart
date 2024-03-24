import 'package:flutter/material.dart';
import '../../../core/constance/app_size.dart';
import '../../../core/constance/color_assets.dart';
import 'text_app.dart';

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
