
import 'package:chaplean/presentation/pages/onboard/onboard_first_page.dart';
import 'package:flutter/material.dart';

import 'app/app_theme.dart';
import 'presentation/pages/profile/profile_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: UITheme.appTheme,
      home: const OnboardFirstPage(),
    );
  }
}
