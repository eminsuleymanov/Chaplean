import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyles {
  //white
  static var etheralWhite = const TextStyle(
    color: AppColors.etherealWhite,
  );

  static var etheralWhite16 =
      etheralWhite.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400);
  static var etheralWhite12 =
      etheralWhite.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400);
  static var etheralWhite25 = etheralWhite.copyWith(
      fontSize: 25.sp, fontWeight: FontWeight.w700, letterSpacing: -1);
  static var etheralWhite8 =
      etheralWhite.copyWith(fontSize: 8.sp, fontWeight: FontWeight.w600);

//primary
  static var primaryColor = const TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w500,
  );

  static var primary16 = primaryColor.copyWith(fontSize: 16.sp);
  static var primary13 = primaryColor.copyWith(fontSize: 13.sp);

  //grey
  static TextStyle smallStyle = const TextStyle(
    color: AppColors.doverGrey,
  );
  static var smalStyle13 =
      smallStyle.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500);
  static var smalStyle10 =
      smallStyle.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w300);
  static var smalStyle16 =
      smallStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w300);

  //white

  static TextStyle appBarTitle = const TextStyle(
    color: Colors.white,
  );

  static var appBarTitle25 =
      appBarTitle.copyWith(fontSize: 25.sp, fontWeight: FontWeight.w700);
  static var appBarTitle13 =
      appBarTitle.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500);

  static TextStyle get whiteS16W400 {
    return TextStyle(
      color: AppColors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get whiteBlueS16W600 {
    return TextStyle(
      color: AppColors.etherealWhite,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
    );
  }

   static TextStyle get grayScaleS13W500 {
    return TextStyle(
      color: AppColors.doverGrey,
      fontSize: 13.sp,
      fontWeight: FontWeight.w500,
    );
  }
}
