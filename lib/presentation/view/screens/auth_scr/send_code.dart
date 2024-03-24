import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:srkl_new_v1/core/constance/app_router.dart';
import 'package:srkl_new_v1/core/constance/app_size.dart';
import 'package:srkl_new_v1/core/constance/color_assets.dart';
import 'package:srkl_new_v1/core/constance/strings_assets.dart';
import 'package:srkl_new_v1/presentation/view/widgets/Button_with_text.dart';
import 'package:srkl_new_v1/presentation/view/widgets/appbar.dart';
import 'package:srkl_new_v1/presentation/view/widgets/elevated_button.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_app.dart';


class SendCode extends StatefulWidget {
  const SendCode({super.key});

  @override
  State<SendCode> createState() => _SendCode();
}

final defaultPinTheme = PinTheme(
  width: 100,
  height: 56,
  textStyle: const TextStyle(
      fontSize: 50,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.transparent),
    borderRadius: BorderRadius.circular(20),
  ),
);

class _SendCode extends State<SendCode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ApplicationToolbar(text: AssetString.forgetPassword),
        body: Padding(
          padding: EdgeInsets.all(AppSize.defaultSize! * 1.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextApp(
                  text: AssetString.enterCode,
                  fontSize: AppSize.defaultSize! * 1.8),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: AppSize.defaultSize! * 3),
                child: Pinput(
                  length: 6,
                  onCompleted: (pin) => print(pin),
                ),
              ),
              TextApp(
                  text: AssetString.enterCode2,
                  fontSize: AppSize.defaultSize! * 1.4),
              CostumTextButton(
                onTap: () {
                  Navigator.pushNamed(context, Routes.forgetPass);
                },
                text: AssetString.resendCode,
                textColor: ColorAsset.mainColor,
                textSize: AppSize.defaultSize! * 1.4,
                textUnderLine: TextDecoration.underline,
                textUnderLineColor: ColorAsset.mainColor,
              ),
              CustomElevatedButton(
                shape: MaterialStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                ),
                text: AssetString.sendCode,
                textColor: Colors.white,
                textSize: AppSize.defaultSize! * 1.4,
                bGColor: ColorAsset.mainColor,
                onTap: () {
                  Navigator.pushNamed(context, Routes.confirmPassword);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
