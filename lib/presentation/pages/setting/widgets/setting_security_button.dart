import '../../../widgets/global_rectangle.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SettingSecurityButton extends StatelessWidget {
  const SettingSecurityButton({super.key, this.onTap});

final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: GlobalRectangle(
        child: Center(
          child: Text(
            AppStrings.security,
            style: AppTextStyles.whiteS13W600,
          ),
        ),
      ),
    );
  }
}
