import 'package:chaplean/presentation/pages/privacy/privacy_page.dart';
import 'package:chaplean/presentation/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';

import '../../../core/routes/generator.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
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
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: GlobalBasicAppBar(
        title: AppStrings.setting,
        onPressed: () {
          Navigate.to(context,const ProfilePage());
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            SettingPrivacyButton(onTap: () => Navigate.to(context,PrivacyPage()),),
            GlobalDivider(),
            SettingSecurityButton(),
            GlobalDivider(),
            SettingAboutButton(),
            Spacer(),
            SettingDeleteAccountButton(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
