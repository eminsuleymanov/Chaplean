import '../../../../../widgets/global_input.dart';
import '../../../../../../utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

class RegisterConfirmPassword extends StatelessWidget {
  const RegisterConfirmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlobalInput(
        hintText: AppStrings.newPassword,
        suffixIcon: const Icon(Icons.remove_red_eye_outlined));
  }
}
