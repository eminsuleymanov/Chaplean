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
      currentIndex: currentIndex,
      onTap: onSelect,
      backgroundColor: AppColors.primaryColor,
      selectedIconTheme: const IconThemeData(color: AppColors.etherealWhite,),
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: AppStrings.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: AppStrings.notification,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: AppStrings.profile,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: AppStrings.chat,
        ),
      ],
    );
  }
}
