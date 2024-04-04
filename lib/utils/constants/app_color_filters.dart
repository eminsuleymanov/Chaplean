import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppColorFilters {
  AppColorFilters._();

  static ColorFilter get doverGreySrcIn {
    return const ColorFilter.mode(AppColors.doverGrey, BlendMode.srcIn);
  }
}
