import '../../../login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../../utils/constants/app_text_styles.dart';

class RequestAccountText extends StatelessWidget {
  const RequestAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(AppStrings.haveAccount, style: AppTextStyles.smallStyle),
      4.horizontalSpace,
      GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: Text(
          AppStrings.loginHere,
          style:
              AppTextStyles.smallStyle.copyWith(color: AppColors.karimunBlue),
        ),
      )
    ]);
  }
}
