import 'package:chaplean/presentation/pages/home/widgets/home_side/grid_profil_item.dart';
import 'package:chaplean/presentation/widgets/global_input.dart';
import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:chaplean/utils/constants/app_strings.dart';

import 'home_side_item.dart';
import 'pause_box.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSideBar extends StatelessWidget {
  const HomeSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(fontSize: 13, color: Colors.white);
    return Padding(
      padding: AppPaddings.all16,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SideBarItem(iconName: AssetsPaths.like, label: '13K', style: style),
            16.verticalSpace,
            SideBarItem(iconName: AssetsPaths.comment, style: style),
            16.verticalSpace,
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: AppPaddings.all16,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: Padding(
                          padding: AppPaddings.all16,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const GlobalInput(
                                prefixIcon: Icon(Icons.search_rounded),
                                hintText: AppStrings.search,
                              ),
                              GridView.count(
                                crossAxisCount: 4,
                                padding: AppPaddings.all16,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                children: List.generate(12, (index) {
                                  return GridProfilItem();
                                }),
                              ),
                              8.verticalSpace,
                              Divider(
                                color: AppColors.doverGrey,
                              ),
                              8.verticalSpace,
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: SideBarItem(iconName: AssetsPaths.share, style: style),
            ),
            16.verticalSpace,
            const PauseBox()
          ]),
    );
  }
}
