import 'package:chaplean/data/models/list_tile_model.dart';
import 'package:chaplean/presentation/pages/liked/custom_list_tile.dart';
import 'package:chaplean/presentation/pages/liked/custom_tab.dart';
import 'package:chaplean/presentation/pages/liked/music_list_view.dart';
import 'package:chaplean/presentation/pages/onboard/onboard_second_page.dart';
import 'package:chaplean/presentation/widgets/custom_nav_bar.dart';
import 'package:chaplean/utils/constants/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
import '../../widgets/custom_back_button.dart';

class LikedMusicPage extends StatefulWidget {
  const LikedMusicPage({super.key});

  @override
  State<LikedMusicPage> createState() => _LikedMusicPageState();
}

class _LikedMusicPageState extends State<LikedMusicPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int activeTabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
    tabController.addListener(() {
      setState(() {
        activeTabIndex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: AppBar(
        toolbarHeight: 72.h,
        titleSpacing: 0,
        backgroundColor: AppColors.primaryColor,
        title: Column(
          children: [
            Padding(
              padding: AppPaddings.all12,
              child: Row(
                children: [
                  const CustomBackButton(page: OnboardSecondPage(),),
                  128.horizontalSpace,
                  const Text(
                    AppStrings.liked,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              color: AppColors.secondaryBlue,
            ),
          ],
        ),
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          controller: tabController,
          tabs: const [
            CustomTab.music(),
            CustomTab.playlist(),
            CustomTab.podcast(),
          ],
          onTap: (index) {},
        ),
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: MusicListView(),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 0,
      ),
    );
  }
}
