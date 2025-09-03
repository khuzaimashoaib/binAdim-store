import 'package:binadim_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:binadim_store/navigation_menu.dart';
import 'package:binadim_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class BAMainApp extends StatelessWidget {
  const BAMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: BATheme.lightTheme,
      darkTheme: BATheme.darkTheme,
      home: Scaffold(
        // backgroundColor: Colors.amber,
        body: const NavigationMenu(),
        // OnBoardingScreen(),
      ),
    );
  }
}
