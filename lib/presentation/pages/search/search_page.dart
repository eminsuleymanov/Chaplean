import 'package:chaplean/presentation/pages/home/home_page.dart';
import 'package:chaplean/presentation/widgets/global_input.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../widgets/custom_back_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: AppBar(
        toolbarHeight: 72.h,
        titleSpacing: 0,
        backgroundColor: AppColors.primaryColor,
        leadingWidth: 0,
        title: Column(
          children: [
            Padding(
              padding: AppPaddings.all12,
              child: Row(
                children: [
                  const CustomBackButton(
                    page: HomePage(),
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
      ),
      body: Container(),
    );
  }
}
