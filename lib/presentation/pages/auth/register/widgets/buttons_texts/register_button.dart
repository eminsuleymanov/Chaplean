import 'package:flutter/material.dart';

import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_button.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalButton(
      onTap: () {},
      title: AppStrings.register,
      color: AppColors.karimunBlue,
    );
  }
}
