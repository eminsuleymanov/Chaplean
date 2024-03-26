import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
import '../../widgets/custom_nav_bar.dart';
import '../../widgets/global_basic_app_bar.dart';
import '../../widgets/global_divider.dart';
import 'widgets/setting_about_button.dart';
import 'widgets/setting_delete_account_button.dart';
import 'widgets/setting_privacy_button.dart';
import 'widgets/setting_security_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: GlobalBasicAppBar(title: AppStrings.setting),
      body: SafeArea(
        child: Column(
          children: [
            SettingPrivacyButton(),
            GlobalDivider(),
            SettingSecurityButton(),
            GlobalDivider(),
            SettingAboutButton(),
            Spacer(),
            SettingDeleteAccountButton(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
