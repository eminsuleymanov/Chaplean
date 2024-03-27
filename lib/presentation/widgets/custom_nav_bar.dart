import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_strings.dart';
import '../../utils/constants/assets_paths.dart';
import '../pages/home/home_page.dart';
import '../pages/library/create_playlist_page.dart';
import '../pages/profile/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> views = [
    HomePage(),
    Container(),
    ProfilePage(),
    LibraryPage(),
  ];
  int seletedIndex = 0;

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
      currentIndex: seletedIndex,
      selectedItemColor: AppColors.etherealWhite,
      onTap: (i) {
        seletedIndex = i;
        setState(() {});
      },
    );
  }
}
