import 'package:chaplean/utils/constants/app_borders.dart';
import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:chaplean/utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class GridProfilItem extends StatelessWidget {
  const GridProfilItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppColors.etherealWhite,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SvgPicture.asset(
              AssetsPaths.profileIconFilled,
              width: 48,
              height: 48,
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
