import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgotTitleDescription extends StatelessWidget {
  const ForgotTitleDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.forgotContent,
      style: AppTextStyles.smalStyle16,
    );
  }
}
