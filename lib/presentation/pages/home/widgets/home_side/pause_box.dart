import '../../../../../utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PauseBox extends StatelessWidget {
  const PauseBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Icon(Icons.pause, color: Colors.white, size: 30),
    );
  }
}
