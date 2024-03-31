import 'package:chaplean/utils/constants/app_paddings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../utils/constants/assets_paths.dart';

class PlaylistFunctions extends StatelessWidget {
  const PlaylistFunctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all16,
      child: Row(
        children: [
          Image.asset(
            AssetsPaths.blueApple,
            width: 96.r,
            height: 96.r,
            fit: BoxFit.cover,
          ),
          12.horizontalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Playlist Name',
                style: AppTextStyles.etheralWhite16,
              ),
              16.verticalSpace,
              Row(
                children: [
                  Text(
                    '101 audio',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.etheralWhite8,
                  ),
                  5.horizontalSpace,
                  const CircleAvatar(
                    radius: 2,
                  ),
                  5.horizontalSpace,
                  Text('EmilDost',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.etheralWhite8),
                ],
              ),
              16.verticalSpace,
              Row(
                children: [
                  SvgPicture.asset(AssetsPaths.like),
                  4.horizontalSpace,
                  Text('101',style:AppTextStyles.etheralWhite8 ,),
                  16.horizontalSpace,
                  SvgPicture.asset(AssetsPaths.save),
                  4.horizontalSpace,
                  Text('101',style:AppTextStyles.etheralWhite8 ,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}