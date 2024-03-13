import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SingerName extends StatelessWidget {
  const SingerName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.rihanna,
      style: AppTextStyles.appBarTitle13,
    );
  }
}
