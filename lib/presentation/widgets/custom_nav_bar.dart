import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_strings.dart';
import '../../utils/constants/assets_paths.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onIndexChanged, // New callback function
  }) : super(key: key);
  final int selectedIndex;
  final Function(int) onIndexChanged; // Callback function type definition

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      currentIndex: widget.selectedIndex,elevation: 0,
      selectedItemColor: AppColors.etherealWhite,
      onTap: (index) {
        widget.onIndexChanged(index); 
      },
    );
  }
}
