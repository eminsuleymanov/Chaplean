import 'package:chaplean/utils/constants/app_borders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      decoration: BoxDecoration(
        borderRadius: AppBorders.all12,
        color: AppColors.secondaryBlue,
      ),
      child: ListTile(
        leading: Container(
          height: 48.r,
          width: 48.r,
          decoration: BoxDecoration(
            color: AppColors.greyScaleGrey_1,
            borderRadius: AppBorders.all10,
          ),
          child: Image.asset(
            width: 48.r,
            height: 48.r,
            image,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        title: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
        ),
        subtitle: Text(
          subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 8.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
