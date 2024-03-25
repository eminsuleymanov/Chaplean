import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../utils/constants/app_borders.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/constants/app_text_styles.dart';

class GlobalInput extends StatelessWidget {
  const GlobalInput({
    super.key,
    this.controller,
    required this.hintText,
    this.isSecure = false,
    this.validate,
    this.color,
    this.onChanged,
    this.maxLine = 1,
    this.suffixIcon,
    this.prefixIcon,
  });

  final dynamic controller;
  final String hintText;
  final bool isSecure;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? color;
  final String? Function(String?)? validate;
  final void Function(String)? onChanged;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: isSecure,
      validator: validate,
      maxLines: maxLine,
      style: AppTextStyles.etheralWhite16,
      decoration: InputDecoration(
        contentPadding: AppPaddings.all10,
        hintStyle: AppTextStyles.smalStyle16,
        fillColor: AppColors.secondaryBlue,
        filled: true,
        hintText: hintText,
        errorStyle: TextStyle(
          color: AppColors.red,
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: AppBorders.all8,
          
        ),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.secondaryBlue),
            borderRadius:AppBorders.all8),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.karimunBlue),
          borderRadius:AppBorders.all8,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.etherealWhite
      ),
    );
  }
}
