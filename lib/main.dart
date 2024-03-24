import 'package:flutter/material.dart';
import 'package:srkl_new_v1/core/constance/app_size.dart';

import 'core/constance/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.login,
      theme: ThemeData(useMaterial3: true),
    );
  }
}
