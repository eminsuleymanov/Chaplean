import 'package:chaplean/presentation/pages/auth/login/login_page.dart';
import 'package:chaplean/presentation/pages/auth/login/widgets/inputs/auth_view.dart';
import 'package:chaplean/presentation/pages/forgot_password/widgets/texts/succes_title_text.dart';
import 'package:chaplean/presentation/pages/forgot_password/widgets/texts/success_description.dart';
import 'package:chaplean/presentation/widgets/custom_back_button.dart';
import 'package:chaplean/presentation/widgets/global_button.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:chaplean/utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../core/routes/generator.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthView(children: [
        CustomBackButton(
          onPressed: () => Navigate.replace(context, const LoginPage()),
          icon: Icons.arrow_back,
        ),
        20.verticalSpace,
        const SuccesTitleText(),
        16.verticalSpace,
        const SuccessDescription(),
        60.verticalSpace,
        Center(
          child: SvgPicture.asset(
            AssetsPaths.successChaplean,
            height: 121.h,
            width: 194.w,
          ),
        ),
        40.verticalSpace,
        GlobalButton(onTap: (){Navigate.to(context,const LoginPage());}, title: AppStrings.backToLogin)
      ]),
    );
  }
}
