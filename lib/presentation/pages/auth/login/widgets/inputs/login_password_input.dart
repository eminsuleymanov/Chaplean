import 'package:flutter/material.dart';

import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_input.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlobalInput(
        hintText: AppStrings.enterPassword,
        suffixIcon: Icon(Icons.remove_red_eye_sharp));
  }
}
