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

      home: const NavigationScreens()


    );
  }
}
