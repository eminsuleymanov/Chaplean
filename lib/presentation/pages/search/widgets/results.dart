import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../utils/constants/assets_paths.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        // shrinkWrap: true,
        itemCount: 3,
        separatorBuilder: (context, index) => const SizedBox(height: 5),
        itemBuilder: (context, index) {
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Loremipsum",
                style: AppTextStyles.etheralWhite16,
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AssetsPaths.xIcon),
              )
            ],
          );
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
