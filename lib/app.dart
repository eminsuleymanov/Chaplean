
import 'package:chaplean/presentation/pages/home/home_page.dart';
import 'package:chaplean/presentation/pages/liked/liked_music_page.dart';
import 'package:chaplean/presentation/pages/playlist_content/playlist_content_page.dart';
import 'package:chaplean/presentation/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';

import 'app/app_theme.dart';
import 'presentation/pages/library/create_playlist_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: UITheme.appTheme,
      home:HomePage(),
    );
  }
}
