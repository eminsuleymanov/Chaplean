import 'package:chaplean/utils/constants/assets_paths.dart';
import 'package:svg_flutter/svg.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, this.onSelect, required this.currentIndex})
      : super(key: key);

  final Function(int)? onSelect;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.white,
      currentIndex: currentIndex,
      onTap: onSelect,
      backgroundColor: AppColors.primaryColor,
      selectedIconTheme: const IconThemeData(
        color: AppColors.etherealWhite,
      ),
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.homeIcon),
          label: AppStrings.home,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.notificationIcon),
          label: AppStrings.notification,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.profileIcon),
          label: AppStrings.profile,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.libraryIcon),
          label: AppStrings.library,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.chatIcon),
          label: AppStrings.chat,
        ),
      ],
    );
  }
}
