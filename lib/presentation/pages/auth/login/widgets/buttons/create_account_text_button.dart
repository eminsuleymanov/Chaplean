import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/routes/generator.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../../utils/constants/app_text_styles.dart';
import '../../../register/register_page.dart';

class CreateAccountTextButton extends StatelessWidget {
  const CreateAccountTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.createAccount, style: AppTextStyles.smallStyle),
        SizedBox(width: 4.sp),
        GestureDetector(
          onTap: () {
           Navigate.to(context,const RegisterPage() );
          },
          child: Text(
            AppStrings.register,
            style:
                AppTextStyles.smallStyle.copyWith(color: AppColors.karimunBlue),
          ),
        ),
      ],
    );
  }
}
