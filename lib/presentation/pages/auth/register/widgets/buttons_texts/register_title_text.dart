import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class RegisterTitleText extends StatelessWidget {
  const RegisterTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.registerDescription,
      style: AppTextStyles.appBarTitle25,
    );
  }
}
