import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalDivider extends StatelessWidget {
  const GlobalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2.h,
      color: AppColors.secondaryBlue,
      height: 1,
    );
  }
}
