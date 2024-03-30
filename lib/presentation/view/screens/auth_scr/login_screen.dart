import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:srkl_new_v1/core/constance/app_router.dart';
import 'package:srkl_new_v1/core/constance/app_size.dart';
import 'package:srkl_new_v1/core/constance/color_assets.dart';
import 'package:srkl_new_v1/core/constance/images_asset.dart';
import 'package:srkl_new_v1/core/constance/strings_assets.dart';
import 'package:srkl_new_v1/presentation/view/widgets/Button_with_text.dart';
import 'package:srkl_new_v1/presentation/view/widgets/elevated_button.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_app.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_fields.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  late bool fire;
  late TextEditingController _usernameController;

  late TextEditingController _passwordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();

    fire = false;
    Timer(const Duration(seconds: 3), () {
      setState(() {
        fire = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Transform(
                transform: Matrix4.skew(0, fire ? -0.2 : 0),
                child: AnimatedContainer(
                  height: !fire
                      ? MediaQuery.of(context).size.height
                      : kToolbarHeight * 4,
                  width: MediaQuery.of(context).size.width,
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.fastOutSlowIn,
                  decoration: BoxDecoration(
                    color: ColorAsset.mainColor,
                    borderRadius: BorderRadius.circular(fire ? 30 : 0),
                  ),
                ),
              ),
              fire
                  ? Positioned(
                      bottom: 58,
                      right: MediaQuery.of(context).size.width * 0.4,
                      child: Image.asset(
                        AssetPath.wheel,
                        scale: 2,
                      ).animate().fade().moveX(
                            begin: 300,
                            end: 150,
                            duration: const Duration(
                              milliseconds: 1000,
                            ),
                          ),
                    )
                  : Container(),
              AnimatedPositioned(
                top: !fire
                    ? MediaQuery.of(context).size.height * 0.35
                    : MediaQuery.of(context).size.height * 0.01,
                left: !fire
                    ? MediaQuery.of(context).size.width * 0.25
                    : MediaQuery.of(context).size.width * 0.01,
                duration: const Duration(milliseconds: 2000),
                child: AnimatedScale(
                    duration: const Duration(milliseconds: 3000),
                    scale: fire ? 0.7 : 1,
                    child: Image.asset(
                      AssetPath.logo,
                      height: 200,
                      width: 200,
                    )),
              )
            ],
          ),
          fire
              ? Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppSize.defaultSize! * 1.8,
                              vertical: AppSize.defaultSize! * 3),
                          child: TextFields(
                            controller: _usernameController,
                            height: AppSize.defaultSize! * 5,
                            text: AssetString.phoneNumber,
                            border: const BorderSide(
                                width: 1, color: ColorAsset.mainColor),
                          ),
                        ),



                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.defaultSize! * 1.8,
                          ),
                          child: TextFields(
                            controller: _passwordController,
                            height: AppSize.defaultSize! * 5,
                            border: const BorderSide(
                                width: 1, color: ColorAsset.mainColor),
                            text: AssetString.password,
                            obscureText: isVisible,
                            sIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSize.defaultSize! * 1.5),
                              child: InkWell(
                                  onTap: () {
                                    {
                                      isVisible = !isVisible;
                                    }
                                    setState(() {});
                                  },
                                  child: Icon(isVisible
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined)),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppSize.defaultSize! * 2.5,
                              vertical: AppSize.defaultSize! * 1),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CostumTextButton(
                              onTap: () {
                                Navigator.pushNamed(context, Routes.forgetPass);
                              },
                              text: AssetString.forgetYourPassword,
                              textColor: ColorAsset.mainColor,
                              textSize: AppSize.defaultSize! * 1.4,
                              textUnderLine: TextDecoration.underline,
                              textUnderLineColor: ColorAsset.mainColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.defaultSize! * 2,
                          ),
                          child: SizedBox(
                            child: CustomElevatedButton(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.onboardingIntroScreen);
                              },
                              shape: MaterialStatePropertyAll(
                                ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20),
                                ),
                              ),
                              text: AssetString.login,
                              textColor: Colors.white,
                              textSize: AppSize.defaultSize! * 1.4,
                              bGColor: ColorAsset.mainColor,
                            ),
                          ),
                        ),
                        SizedBox(height: AppSize.defaultSize! * 4),
                        TextApp(
                            text: AssetString.orSigninWith,
                            fontSize: AppSize.defaultSize! * 1.2),
                        SizedBox(height: AppSize.defaultSize! * 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  AssetPath.google,
                                  scale: 2,
                                )),
                            SizedBox(width: AppSize.defaultSize! * 3),
                            InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  AssetPath.facebook,
                                  scale: 2,
                                )),
                            SizedBox(width: AppSize.defaultSize! * 3),
                            InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  AssetPath.apple,
                                  scale: 2,
                                )),
                          ],
                        ),
                        SizedBox(height: AppSize.screenHeight! * 0.1),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            const Divider(
                              thickness: 1,
                            ),
                            TextApp(
                                bGColor: Colors.white,
                                text: AssetString.dontHaveAnAcount,
                                fontSize: AppSize.defaultSize! * 1.4),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.defaultSize! * 2,
                          ),
                          child: CustomElevatedButton(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.signup);
                            },
                            text: AssetString.createAccount,
                            textColor: ColorAsset.mainColor,
                            textSize: AppSize.defaultSize! * 1.8,
                            bGColor: ColorAsset.secondColor,
                            shape: const MaterialStatePropertyAll(
                              ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
