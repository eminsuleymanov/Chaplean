import 'package:flutter/material.dart';

import 'app_borders.dart';
import 'app_colors.dart';

class AppBoxDecorations {
  const AppBoxDecorations._();

  static BoxDecoration get secondaryBlueB12 {
    return BoxDecoration(
      borderRadius: AppBorders.all12,
      color: AppColors.secondaryBlue,
    );
  }
}
