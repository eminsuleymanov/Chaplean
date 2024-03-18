import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:chaplean/utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class GridProfilItem extends StatelessWidget {
  const GridProfilItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48.r,
          height: 48.r,
          decoration: BoxDecoration(
            color: AppColors.etherealWhite,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Center(
              child: SvgPicture.asset(
                AssetsPaths.profileIconFilled,
                height: 26.r,
                width: 24.r,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
         Text(
          AppStrings.username,
          style: AppTextStyles.etheralWhite8,
        ),
      ],
    );
  }
}
