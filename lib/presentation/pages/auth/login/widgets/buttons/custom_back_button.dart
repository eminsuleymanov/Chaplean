
import '../../../../onboard/onboard_second_page.dart';
import '../../../../../../utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../../utils/constants/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.r,
      height: 40.r,
      decoration: BoxDecoration(
        color: AppColors.royalty,
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: IconButton(
        padding: EdgeInsets.only(right: 2.sp, top: 2.sp),
        icon: SvgPicture.asset(AssetsPaths.backArrow),
        onPressed: () {
           Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnboardSecondPage(),));

        },
      ),
    );
  }
}
