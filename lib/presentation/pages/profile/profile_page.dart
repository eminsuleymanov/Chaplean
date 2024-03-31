import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import 'profile_app_bar.dart';
import 'profile_header.dart';
import 'profile_pinned_tab_bar.dart';
import 'profile_playlist_list_view.dart';
import 'profile_users_grid_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController tabController;
  int activeTabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
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
      appBar: const ProfileAppBar(),
      body: CustomScrollView(
        slivers: [
          const ProfileHeader(),
          ProfilePinnedTabBar(controller: tabController),
          SliverFillRemaining(
            child: TabBarView(
              controller: tabController,

              children: const [
                ProfilePlaylistListView(),
                ProfileUsersGridView(),

              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: const BottomNavBar(),
    );
  }
}
