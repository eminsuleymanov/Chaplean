import 'package:flutter/material.dart';

import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_rectangle.dart';

class SettingAboutButton extends StatelessWidget {
  const SettingAboutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalRectangle(
      child: Center(
        child: Text(
          AppStrings.about,
          style: AppTextStyles.whiteS13W600,
        ),
      ),
    );
  }
}
