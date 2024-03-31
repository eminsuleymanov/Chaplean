import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:svg_flutter/svg.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/assets_paths.dart';

class ProfilePinnedTabBar extends StatelessWidget {
  const ProfilePinnedTabBar({super.key, this.controller});

 final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: ColoredBox(
        color: AppColors.primaryColor,
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          controller: controller,
          tabs: [
            SizedBox(
              height: 48.h,
              child: SvgPicture.asset(AssetsPaths.musicListIcon),
            ),
            SizedBox(
              height: 48.h,
              child: SvgPicture.asset(AssetsPaths.profileIcon_2),
            ),
          ],
        ),
      ),
    );
  }
}
