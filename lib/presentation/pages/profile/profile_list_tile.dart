import 'play_list.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 12.w,
      leading: Image.asset(
        filterQuality: FilterQuality.high,
        AssetsPaths.defaultProfileImage,
        width: 96.r,
        height: 96.r,
        fit: BoxFit.contain,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Emil Dostaliyev',
            style: AppTextStyles.etheralWhite16,
          ),
          8.verticalSpace,
          Text(
            'No way back',
            style: AppTextStyles.etheralWhite12,
          ),
        ],
      ),
      subtitle: Row(
        children: [
          40.verticalSpace,
          Text(
            '205 Followers',
            style: AppTextStyles.smalStyle10,
          ),
          16.horizontalSpace,
          Text(
            '105 Following',
            style: AppTextStyles.smalStyle10,
          ),
        ],
      ),
      trailing:const PlayList()
    );
  }
}
