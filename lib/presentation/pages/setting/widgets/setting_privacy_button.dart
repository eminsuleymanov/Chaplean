import '../../../widgets/global_rectangle.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SettingPrivacyButton extends StatelessWidget {
  const SettingPrivacyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalRectangle(
      child: Center(
        child: Text(
          AppStrings.privacy,
          style: AppTextStyles.whiteS13W600,
        ),
      ),
    );
  }
}
