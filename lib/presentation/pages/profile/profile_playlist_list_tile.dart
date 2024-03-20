import 'package:chaplean/utils/constants/app_box_decorations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../utils/constants/app_borders.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/assets_paths.dart';
import 'profile_bottom_sheet.dart';

class ProfilePlaylistListTile extends StatelessWidget {
  const ProfilePlaylistListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      decoration: AppBoxDecorations.secondaryBlueB12,
      child: ListTile(
        leading: Container(
          height: 48.r,
          width: 48.r,
          decoration: BoxDecoration(
            color: AppColors.greyScaleGrey_1,
            borderRadius: AppBorders.all10,
          ),
          child: Image.asset(
            AssetsPaths.musicImage_1,
            width: 48.r,
            height: 48.r,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        title: Text(
          'title',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
        ),
        subtitle: Text(
          'subtitle',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 8.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
        ),
        trailing: GestureDetector(
          onTap: () => ProfileBottomSheet.profileSheet(context),
          child: SvgPicture.asset(AssetsPaths.verticalDots),
        ),
      ),
    );
  }
}
