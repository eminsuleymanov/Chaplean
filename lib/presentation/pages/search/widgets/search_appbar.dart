import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/generator.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../widgets/custom_back_button.dart';
import '../../../widgets/global_input.dart';
import '../../home/home_page.dart';

class SearchAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.h,
      titleSpacing: 0,
      backgroundColor: AppColors.primaryColor,
      leadingWidth: 0,
      title: Column(
        children: [
          Padding(
            padding: AppPaddings.all12,
            child: Row(
              children: [
                CustomBackButton(
                  onPressed: () => Navigate.back(
                    Scaffold.of(context).context,
                    const HomePage(),
                  ),
                ),
                10.horizontalSpace,
                const SizedBox(
                    width: 310,
                    height: 40,
                    child: GlobalInput(
                      prefixIcon: Icon(Icons.search_rounded),
                      hintText: AppStrings.search,
                    ))
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: AppColors.secondaryBlue,
          ),
        ],
      ),
      // bottom: TabBar(
      //   indicatorSize: TabBarIndicatorSize.tab,
      //   controller: tabController,
      //   tabs: const [
      //     CustomTab.music(),
      //     CustomTab.playlist(),
      //     CustomTab.podcast(),
      //   ],
      //   onTap: (index) {},
      // ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
