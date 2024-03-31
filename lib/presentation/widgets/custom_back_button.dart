import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final void Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.r,
      height: 40.r,
      decoration: BoxDecoration(
        color: AppColors.secondaryBlue,
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: IconButton(
        padding: EdgeInsets.only(right: 2.sp, top: 2.sp),
        icon: Icon(
          icon,
          color: AppColors.etherealWhite,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
