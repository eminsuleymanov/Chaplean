import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 53.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.secondaryBlue,
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
        ),
        child: const Center(
          child: Text(
            AppStrings.edit,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppColors.etherealWhite),
          ),
        ),
      ),
    );
  }
}
