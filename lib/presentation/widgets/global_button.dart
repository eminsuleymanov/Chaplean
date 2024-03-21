import '../../utils/constants/app_borders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constants/app_colors.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton(
      {super.key,
      required this.onTap,
      required this.title,
      this.isLoadings = false,
      this.color, this.style});

  final void Function() onTap;
  final String title;
  final bool isLoadings;
  final Color? color;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: double.infinity,
            height: 56.sp,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color ?? AppColors.karimunBlue,
              borderRadius:AppBorders.all8,
            ),
            child: Center(
              child: isLoadings
                  ? const CircularProgressIndicator.adaptive()
                  : Text(title, style: style),
            )));
  }
}
