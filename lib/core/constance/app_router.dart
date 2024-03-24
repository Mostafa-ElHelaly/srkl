import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../presentation/view/screens/auth_scr/confirm_password.dart';
import '../../presentation/view/screens/auth_scr/forget_password.dart';
import '../../presentation/view/screens/auth_scr/login_screen.dart';
import '../../presentation/view/screens/auth_scr/send_code.dart';
import '../../presentation/view/screens/auth_scr/signup_screen.dart';
import '../../presentation/view/screens/on_boarding_screens/on_boarding_Screen.dart';

class Routes {
  static const String login = "/home";
  static const String signup = "/signup";
  static const String forgetPass = "/ForgetPass";
  static const String sendCode = "/SendCode";
  static const String confirmPassword = "/ConfirmPassword";
  static const String onboardingIntroScreen = "/OnboardingIntroScreen";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        if (Platform.isWindows) {
          return MaterialPageRoute(builder: (_) => const MyApp());
        } else {
          return MaterialPageRoute(builder: (_) => const LogInScreen());
        }
      case Routes.signup:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const LogInScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const SignupScreen());
        }
      case Routes.forgetPass:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const LogInScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const ForgetPassword());
        }
      case Routes.sendCode:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const ForgetPassword());
        } else {
          return MaterialPageRoute(builder: (_) => const SendCode());
        } case Routes.confirmPassword:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const SendCode());
        } else {
          return MaterialPageRoute(builder: (_) => const ConfirmPassword());
        }case Routes.onboardingIntroScreen:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const SendCode());
        } else {
          return MaterialPageRoute(builder: (_) => const OnboardingIntroScreen());
        }
    }
    return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
