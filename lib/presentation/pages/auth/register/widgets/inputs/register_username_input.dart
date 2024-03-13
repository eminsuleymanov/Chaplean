import '../../../../../widgets/global_input.dart';
import '../../../../../../utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

class RegisterUsernameInput extends StatelessWidget {
  const RegisterUsernameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlobalInput(
      hintText: AppStrings.username,
    );
  }
}
