import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTab extends StatelessWidget {
  const CustomTab.music({
    super.key,
    this.text = AppStrings.music,
  });
  const CustomTab.playlist({
    super.key,
    this.text = AppStrings.playlist,
  });
  const CustomTab.podcast({
    super.key,
    this.text = AppStrings.podcast,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
