import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class MusicName extends StatelessWidget {
  const MusicName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.musicName,
      style: AppTextStyles.appBarTitle25,
    );
  }
}
