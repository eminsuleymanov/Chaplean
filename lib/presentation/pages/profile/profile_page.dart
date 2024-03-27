import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:svg_flutter/svg.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/assets_paths.dart';
import '../../widgets/custom_nav_bar.dart';
import '../../widgets/global_divider.dart';
import 'profile_app_bar.dart';
import 'profile_list_tile.dart';
import 'profile_playlist_list_tile.dart';
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
          SliverAppBar(
            pinned: false,
            floating: false,
            expandedHeight: 128.h,
            scrolledUnderElevation: 0,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              background: ColoredBox(
                color: AppColors.primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileListTile(),
                    GlobalDivider(),
                  ],
                ),
              ),
            ),
          ),
          SliverPinnedHeader(
            child: ColoredBox(
              color: AppColors.primaryColor,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                controller: tabController,
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
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.separated(
                  padding: AppPaddings.tlr24b16,
                  shrinkWrap: true,
                  itemCount: 1,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => 16.verticalSpace,
                  itemBuilder: (context, index) {
                    return const ProfilePlaylistListTile();
                  },
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 56,
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Image.asset(AssetsPaths.defaultProfileImage);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}




// TabBarView(controller: tabController,
//             children: [
//             CustomListTile(
//                 image: AssetsPaths.musicImage_1,
//                 title: 'title',
//                 subtitle: 'subtitle'),
//                 CustomListTile(
//                 image: AssetsPaths.musicImage_1,
//                 title: 'title',
//                 subtitle: 'subtitle')
//           ])




// SliverList(
//               delegate: SliverChildBuilderDelegate(
//             childCount: 20,
//             (context, index) {
//               return TabBarView(viewportFraction: 2,
//                 controller: tabController,
//                 children: const [
//                   MusicListView(),
//                   PlaylistListView(),
//                 ],
//               );
//             },
//           )),



// ListView.separated(
//                       padding: AppPaddings.tlr24b16,
//                       shrinkWrap: true,
//                       itemCount: 1,
//                       scrollDirection: Axis.vertical,
//                       physics: const NeverScrollableScrollPhysics(),
//                       separatorBuilder: (context, index) => 16.verticalSpace,
//                       itemBuilder: (context, index) {
//                         return const ProfilePlaylistListTile();
//                       },
//                     ),