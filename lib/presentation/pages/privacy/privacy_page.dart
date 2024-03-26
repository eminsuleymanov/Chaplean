import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/global_basic_app_bar.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: const GlobalBasicAppBar(title: AppStrings.privacy),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppPaddings.tlr24b16,
              child: Text(
                AppStrings.privacyDescription,
                style: AppTextStyles.whiteS13W500,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
