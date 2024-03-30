import 'package:flutter/material.dart';
import 'package:srkl_new_v1/core/constance/app_router.dart';
import 'package:srkl_new_v1/core/constance/app_size.dart';
import 'package:srkl_new_v1/core/constance/color_assets.dart';
import 'package:srkl_new_v1/core/constance/strings_assets.dart';
import 'package:srkl_new_v1/presentation/view/widgets/appbar.dart';
import 'package:srkl_new_v1/presentation/view/widgets/elevated_button.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_app.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_fields.dart';


class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _confirmPassword();
}

bool isVisible = true;

class _confirmPassword extends State<ConfirmPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSize.defaultSize! * 1.4),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextApp(
              text: AssetString.newPassword,
              fontSize: AppSize.defaultSize! * 1.5,),
          TextFields(
            border: const BorderSide(width: 1, color: ColorAsset.mainColor),
            height: AppSize.defaultSize! * 4,
            obscureText: isVisible,
            sIcon: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Icon(isVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
              ),
            ),
          ),
          SizedBox(height: AppSize.defaultSize! * 1.7),
          TextApp(
              text: AssetString.confirmNewPassword,
              fontSize: AppSize.defaultSize! * 1.5,),
          TextFields(
            border: const BorderSide(width: 1, color: ColorAsset.mainColor),
            height: AppSize.defaultSize! * 4,
            obscureText: isVisible,
            sIcon: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Icon(isVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
              ),
            ),
          ),
          SizedBox(height: AppSize.defaultSize! * 1.7),
          CustomElevatedButton(
            shape: MaterialStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
            ),
            text: AssetString.confirm,
            textColor: Colors.white,
            textSize: AppSize.defaultSize! * 1.5,
            bGColor: ColorAsset.mainColor,
            onTap: () {
              Navigator.pushNamed(context, Routes.onboardingIntroScreen);
            },
          ),
        ]),
      ),
    );
  }
}