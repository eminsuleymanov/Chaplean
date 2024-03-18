import 'package:flutter/material.dart';

import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_input.dart';

class RegisterConfirmPassword extends StatelessWidget {
  const RegisterConfirmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlobalInput(
        hintText: AppStrings.newPassword,
        suffixIcon:  Icon(Icons.remove_red_eye_outlined));
  }
}
