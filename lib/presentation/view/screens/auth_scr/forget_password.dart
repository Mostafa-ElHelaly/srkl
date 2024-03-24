import 'package:flutter/material.dart';

import '../../../../core/constance/app_router.dart';
import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/color_assets.dart';
import '../../../../core/constance/strings_assets.dart';
import '../../widgets/appbar.dart';
import '../../widgets/column_with_text.dart';
import '../../widgets/elevated_button.dart';
import '../../widgets/text_app.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ApplicationToolbar(text: AssetString.forgetPassword),
        body: Padding(
          padding: EdgeInsets.all(AppSize.defaultSize! * 1.5),
          child: Column(
            children: [
              TextApp(
                  text: AssetString.forgetPasswordText,
                  fontSize: AppSize.defaultSize! * 1.5),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: AppSize.defaultSize! * 2),
                child: ColumnWithFieldText(
                    text: AssetString.enterYourMobileNo,
                    width: AppSize.screenWidth!),
              ),
              CustomElevatedButton(
                shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(20))),
                text: AssetString.sendCode,
                textColor: Colors.white,
                textSize: AppSize.defaultSize! * 1.4,
                bGColor: ColorAsset.mainColor,
                onTap: () {
                  Navigator.pushNamed(context, Routes.sendCode);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
