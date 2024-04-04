import 'package:chaplean/core/routes/generator.dart';
import 'package:chaplean/presentation/pages/auth/login/login_page.dart';
import 'package:chaplean/presentation/pages/forgot_password/forgot_password_page.dart';
import 'package:chaplean/presentation/pages/forgot_password/success_page.dart';
import 'package:chaplean/presentation/pages/forgot_password/widgets/buttons/enter_code.dart';
import 'package:chaplean/presentation/pages/forgot_password/widgets/texts/otp_description.dart';
import 'package:chaplean/presentation/pages/forgot_password/widgets/texts/otp_resend_text.dart';
import 'package:chaplean/presentation/pages/forgot_password/widgets/texts/otp_title_text.dart';
import 'package:chaplean/presentation/widgets/global_button.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_back_button.dart';
import '../auth/login/widgets/inputs/auth_view.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthView(children: [
      CustomBackButton(
        onPressed: () => Navigate.replace(context, const ForgotPasswordPage()),
        icon: Icons.arrow_back,
      ),
      20.verticalSpace,
      const OtpTitleText(),
      16.verticalSpace,
      const OtpDescription(),
      60.verticalSpace,
      const EnterCode(),
      100.verticalSpace,
      GlobalButton(
        onTap: () {
          Navigate.to(context, const SuccessPage());
        },
        title: AppStrings.verify,
        style: AppTextStyles.primary16,
      ),
      16.verticalSpace,
      const OtpResendText()
    ]));
  }
}
