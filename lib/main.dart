

import 'package:chaplean/presentation/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/app_theme.dart';
import 'presentation/pages/liked/liked_music_page.dart';
import 'utils/constants/app_colors.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, widget) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: UITheme.appTheme,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(12.0),
          child: AppBar(
            backgroundColor: AppColors.primaryColor,
          ),
        ),
        body: const LikedMusicPage(),
      ),
    );
  }
}
