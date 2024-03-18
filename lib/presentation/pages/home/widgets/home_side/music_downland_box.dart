import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MusicDownlandBox extends StatelessWidget {
  const MusicDownlandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: 200,
      decoration: BoxDecoration(
        color: AppColors.royalty,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.download, color: AppColors.etherealWhite, size: 30),
          16.horizontalSpace,
          Text(
            AppStrings.downlandMp4,
            style: AppTextStyles.smalStyle13,
          )
        ],
      ),
    );
  }
}
