import 'package:chaplean/utils/constants/app_borders.dart';
import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppBoxDecorations {
  const AppBoxDecorations._();

  static BoxDecoration get secondaryBlueB12 {
    return BoxDecoration(
      borderRadius: AppBorders.all12,
      color: AppColors.secondaryBlue,
    );
  }
}
