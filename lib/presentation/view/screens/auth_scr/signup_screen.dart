import 'package:flutter/material.dart';
import 'package:srkl_new_v1/core/constance/app_router.dart';
import 'package:srkl_new_v1/core/constance/app_size.dart';
import 'package:srkl_new_v1/core/constance/color_assets.dart';
import 'package:srkl_new_v1/core/constance/strings_assets.dart';
import 'package:srkl_new_v1/presentation/view/widgets/appbar.dart';
import 'package:srkl_new_v1/presentation/view/widgets/column_with_text.dart';
import 'package:srkl_new_v1/presentation/view/widgets/column_with_text_pass.dart';
import 'package:srkl_new_v1/presentation/view/widgets/elevated_button.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_app.dart';
import 'package:srkl_new_v1/presentation/view/widgets/text_fields.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isVisible = true;
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController phoneNumberController;
  late final TextEditingController emailController;
  late final TextEditingController dateOfBirthController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    dateOfBirthController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    dateOfBirthController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value ?? DateTime.now();
      });
    });
  }

  bool _button1Selected = false;
  bool _button2Selected = false;
  bool _button3Selected = false;
  bool _button4Selected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 2),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const ApplicationToolbar(text: AssetString.createAccount),
              TextApp(
                  text: AssetString.personalInformation,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.defaultSize! * 2.5),
              SizedBox(height: AppSize.defaultSize! * 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 60,
                  ),
                  CustomElevatedButton(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signup);
                    },
                    text: AssetString.uploadProfileImage,
                    textColor: ColorAsset.mainColor,
                    textSize: AppSize.defaultSize! * 1.8,
                    bGColor: ColorAsset.secondColor,
                    shape: const MaterialStatePropertyAll(
                      ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSize.defaultSize! * 5),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnWithFieldText(
                    controller: firstNameController,
                    text: AssetString.fName,
                    width: AppSize.defaultSize! * 18.1,
                  ),
                  SizedBox(width: AppSize.defaultSize! * 1),
                  ColumnWithFieldText(
                    controller: lastNameController,
                    text: AssetString.lName,
                    width: AppSize.defaultSize! * 18.5,
                  ),
                ],
              ),
              SizedBox(height: AppSize.defaultSize! * 2),
              ColumnWithFieldText(
                controller: phoneNumberController,
                text: AssetString.phoneNo,
                width: AppSize.defaultSize! * 38,
              ),
              SizedBox(height: AppSize.defaultSize! * 2),
              ColumnWithFieldText(
                controller: emailController,
                text: AssetString.emailText,
                width: AppSize.defaultSize! * 38,
              ),
              SizedBox(height: AppSize.defaultSize! * 2),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TextApp(
                    text: AssetString.birthday,
                    fontSize: AppSize.defaultSize! * 1.4),
                TextFields(
                  controller: dateOfBirthController,
                  readOnly: true,
                  onTap: _showDatePicker,
                  text: _dateTime.toString().substring(0, 10),
                  sIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.defaultSize! * 1.5),
                    child: const Icon(Icons.calendar_today),
                  ),
                  border:
                      const BorderSide(width: 0, color: ColorAsset.mainColor),
                  width: AppSize.defaultSize! * 38,
                  height: AppSize.defaultSize! * 4,
                )
              ]),
              SizedBox(height: AppSize.defaultSize! * 2),
              ColumnWithFieldText(
                controller: phoneNumberController,
                text: AssetString.government,
                width: AppSize.defaultSize! * 38,
              ),
              SizedBox(height: AppSize.defaultSize! * 2),
              ColumnWithFieldText(
                controller: phoneNumberController,
                text: AssetString.selectCity,
                width: AppSize.defaultSize! * 38,
              ),
              SizedBox(height: AppSize.defaultSize! * 2),
              ColumnWithFieldTextWithPass(
                controller: passwordController,
                text: AssetString.pass,
                width: AppSize.defaultSize! * 38,
              ),
              SizedBox(height: AppSize.defaultSize! * 2),
              ColumnWithFieldTextWithPass(
                controller: confirmPasswordController,
                text: AssetString.confPass,
                width: AppSize.defaultSize! * 38,
              ),
              SizedBox(height: AppSize.defaultSize! * 2),
              TextApp(
                  text: AssetString.selectRole,
                  fontSize: AppSize.defaultSize! * 1.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _button1Selected = !_button1Selected;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: const BorderSide(color: ColorAsset.mainColor),
                        ),
                        backgroundColor: _button1Selected
                            ? ColorAsset.mainColor
                            : Colors.white,
                      ),
                      child: const Text(
                        AssetString.actor,
                        style: TextStyle(color: ColorAsset.mainColor),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _button2Selected = !_button2Selected;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: const BorderSide(color: ColorAsset.mainColor),
                        ),
                        backgroundColor: _button2Selected
                            ? ColorAsset.mainColor
                            : Colors.white,
                      ),
                      child: const Text(
                        AssetString.director,
                        style: TextStyle(color: ColorAsset.mainColor),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _button3Selected = !_button3Selected;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: const BorderSide(color: ColorAsset.mainColor),
                        ),
                        backgroundColor: _button3Selected
                            ? ColorAsset.mainColor
                            : Colors.white,
                      ),
                      child: const Text(
                        AssetString.producer,
                        style: TextStyle(color: ColorAsset.mainColor),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _button4Selected = !_button4Selected;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: const BorderSide(color: ColorAsset.mainColor),
                        ),
                        backgroundColor: _button4Selected
                            ? ColorAsset.mainColor
                            : Colors.white,
                      ),
                      child: const Text(
                        AssetString.castingDirector,
                        style: TextStyle(color: ColorAsset.mainColor),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSize.defaultSize! * 2),
              CustomElevatedButton(
                onTap: () {
                  Navigator.pushNamed(context, Routes.signup);
                },
                text: AssetString.createAccount,
                textColor: Colors.white,
                textSize: AppSize.defaultSize! * 1.8,
                bGColor: ColorAsset.mainColor,
                shape: const MaterialStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(height: AppSize.defaultSize! * 4),
            ]),
          ),
        ),
      ),
    );
  }

  bool validation() {
    if (firstNameController.text.isEmpty) {
      return false;
    }
    if (lastNameController.text.isEmpty) {
      return false;
    }
    if (phoneNumberController.text.isEmpty) {
      return false;
    }
    if (emailController.text.isEmpty) {
      return false;
    }
    if (passwordController.text.isEmpty) {
      return false;
    }
    if (confirmPasswordController.text.isEmpty) {
      return false;
    }
    return true;
  }
}
