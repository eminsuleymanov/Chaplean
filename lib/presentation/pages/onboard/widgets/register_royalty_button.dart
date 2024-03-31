import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_button.dart';

class RoyaltyColorButton extends StatelessWidget {
  const RoyaltyColorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalButton(
        onTap: () {},
        title: AppStrings.register,
        color: AppColors.royalty,
        style: AppTextStyles.etheralWhite16);
  }
}
