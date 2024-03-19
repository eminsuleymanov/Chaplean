import 'package:chaplean/presentation/pages/home/widgets/home_side/bottom_sheet_box.dart';
import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:chaplean/utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CommentBottomSheet extends StatelessWidget {
  const CommentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheetBox(children: [
      Row(
        children: [
          Container(
            width: 24.r,
            height: 24.r,
            decoration: BoxDecoration(
              color: AppColors.etherealWhite,
              borderRadius: BorderRadius.circular(4),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Center(
                child: SvgPicture.asset(
                  AssetsPaths.profileIconFilled,
                  height: 20.r,
                  width: 20.r,
                ),
              ),
            ),
          ),
          8.horizontalSpace,
          Text(
            AppStrings.username,
            style: AppTextStyles.etheralWhite12,
          ),
        ],
      ),
      8.verticalSpace,
      Text(
        AppStrings.commentText,
        style: AppTextStyles.smalStyle10,
      ),

      8.verticalSpace,
     const Divider(color: AppColors.karimunBlue,)
    ]);
  }
}
