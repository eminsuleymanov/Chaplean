import '../../../../../widgets/global_input.dart';
import '../../../../../../utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalInput(
        hintText: AppStrings.enterPassword,
        suffixIcon: Icon(Icons.remove_red_eye_sharp));
  }
}
