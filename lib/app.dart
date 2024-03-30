
import 'package:chaplean/presentation/pages/edit_profile/edit_profile_page.dart';
import 'package:chaplean/presentation/pages/home/navigation_screens.dart';
import 'package:chaplean/presentation/pages/liked/liked_music_page.dart';
import 'package:chaplean/presentation/pages/onboard/onboard_first_page.dart';
import 'package:chaplean/presentation/pages/search/widgets/results.dart';

import 'presentation/pages/profile/profile_page.dart';

import 'presentation/pages/home/home_page.dart';
import 'presentation/pages/library/create_playlist_page.dart';
import 'presentation/pages/search/search_page.dart';

import 'package:flutter/material.dart';

import 'app/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: UITheme.appTheme,
      home: const NavigationScreens()
    );
  }
}
