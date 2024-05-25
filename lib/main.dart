import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app.dart';
import 'helpers/service_locator.dart';  

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupServiceLocator();  
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, widget) => const MyApp(),
    ),
  );
}
