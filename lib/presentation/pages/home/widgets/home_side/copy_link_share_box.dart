import 'package:chaplean/presentation/pages/home/widgets/home_side/pause_box.dart';
import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CopyLinkShareBox extends StatelessWidget {
  const CopyLinkShareBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          const PauseBox(
            color: AppColors.royalty,
            icon: Icons.copy,
          ),
          16.horizontalSpace,
          const PauseBox(
            icon: Icons.share,
            color: AppColors.royalty,
          ),
        ],
      ),
    );
  }
}
