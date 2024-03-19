import 'package:chaplean/presentation/pages/home/widgets/home_side/bottom_sheet_box.dart';
import 'package:chaplean/presentation/pages/home/widgets/home_side/copy_link_share_box.dart';
import 'package:chaplean/presentation/pages/home/widgets/home_side/grid_profil_item.dart';
import 'package:chaplean/presentation/pages/home/widgets/home_side/music_downland_box.dart';
import 'package:chaplean/presentation/widgets/global_input.dart';
import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheetBox(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: GlobalInput(
            prefixIcon: Icon(Icons.search_rounded),
            hintText: AppStrings.search,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(16, (index) {
                return const GridProfilItem();
              }),
            ),
          ),
        ),
        4.verticalSpace,
        const Divider(
          color: AppColors.royalty,
        ),
        Row(
          children: [
            const CopyLinkShareBox(),
            16.horizontalSpace,
          const  MusicDownlandBox()
          ],
        ),
      ],
    );
  }
}
