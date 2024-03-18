import 'package:flutter/material.dart';

import '../../core/routes/generator.dart';
import '../../utils/constants/app_strings.dart';
import '../../utils/constants/app_text_styles.dart';
import '../pages/auth/login/login_page.dart';
import 'global_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalButton(
        style: AppTextStyles.primary16,
        title: AppStrings.login,
        onTap: () {
          Navigate.to(context, const LoginPage());
        });
  }
}
