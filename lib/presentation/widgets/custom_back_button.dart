import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.width,
    this.height,
    this.size, this.radius,
  }) : super(key: key);

  final void Function() onPressed;
  final IconData icon;
  final double? width;
  final double? height;
  final double? size;
  final BorderRadiusGeometry? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 40.w,
      height: height ?? 40.h,
      decoration: BoxDecoration(
        color: AppColors.secondaryBlue,
        borderRadius:radius?? BorderRadius.circular(12.sp),
      ),
      child: Center(
        child: IconButton(
          padding: EdgeInsets.only(right: 2.sp, top: 2.sp),
          icon: Icon(
            icon,
            color: AppColors.etherealWhite,
            size: size,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
