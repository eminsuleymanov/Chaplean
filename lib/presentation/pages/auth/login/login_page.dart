import '../../../../features/app_router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../widgets/custom_back_button.dart';
import '../../../widgets/global_button.dart';
import 'widgets/buttons/create_account_text_button.dart';
import 'widgets/buttons/fogot_password_text_button.dart';
import 'widgets/buttons/login_title_text.dart';
import 'widgets/inputs/auth_view.dart';
import 'widgets/inputs/login_input_username.dart';
import 'widgets/inputs/login_password_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthView(
        children: [
          CustomBackButton(
            onPressed: () => context.pushNamed(RouteConstants.onboarding2),
            icon: Icons.arrow_back,
          ),
          20.verticalSpace,
          const LoginTitleText(),
          120.verticalSpace,
          const LoginInputUsername(),
          16.verticalSpace,
          const LoginPasswordInput(),
          16.verticalSpace,
          const FogotPasswordTextButton(),
          131.verticalSpace,
          GlobalButton(
              onTap: () {
                context.pushNamed(RouteConstants.home);
              },
              title: AppStrings.login),
          8.verticalSpace,
          const CreateAccountTextButton()
        ],
      ),
    );
  }
}
