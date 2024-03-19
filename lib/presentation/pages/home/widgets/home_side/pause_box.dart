import '../../../../../utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PauseBox extends StatelessWidget {
  const PauseBox({super.key, this.color, this.icon});
  final Color? color;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: color ?? AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
