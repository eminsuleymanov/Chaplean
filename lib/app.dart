
import 'package:chaplean/presentation/pages/library/create_playlist_page.dart';

import 'presentation/pages/onboard/onboard_first_page.dart';

import 'package:flutter/material.dart';

import 'app/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: UITheme.appTheme,
      home: const CreatePlaylistPage(),
    );
  }
}
