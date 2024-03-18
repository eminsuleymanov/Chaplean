import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:chaplean/utils/constants/app_paddings.dart';
import 'package:flutter/material.dart';

class BottomSheetBox extends StatelessWidget {
  const BottomSheetBox({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 450,padding:AppPaddings.all16,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ));
  }
}
