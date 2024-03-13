import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardDescription extends StatelessWidget {
  const OnboardDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.description,
      style: AppTextStyles.etheralWhite12,
    );
  }
}
