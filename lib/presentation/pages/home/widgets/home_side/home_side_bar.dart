import 'package:chaplean/presentation/pages/home/widgets/home_side/comment_bottom_sheet.dart';
import 'package:chaplean/presentation/pages/home/widgets/home_side/grid_profil_item.dart';
import 'package:chaplean/presentation/pages/home/widgets/home_side/pause_box.dart';
import 'package:chaplean/presentation/pages/home/widgets/home_side/share_bottom_sheet.dart';
import 'package:chaplean/presentation/widgets/global_input.dart';
import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:chaplean/utils/constants/app_strings.dart';

import 'home_side_item.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSideBar extends StatelessWidget {
  const HomeSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(fontSize: 13, color: Colors.white);
    return Padding(
      padding: AppPaddings.all16,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SideBarItem(iconName: AssetsPaths.like, label: '13K', style: style),
            16.verticalSpace,
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const CommentBottomSheet();
                      });
                },
                child:
                    SideBarItem(iconName: AssetsPaths.comment, style: style)),
            16.verticalSpace,
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return const ShareBottomSheet();
                  },
                );
              },
              child: SideBarItem(iconName: AssetsPaths.share, style: style),
            ),
            16.verticalSpace,
            const PauseBox(
              icon: Icons.pause,
            )
          ]),
    );
  }
}
