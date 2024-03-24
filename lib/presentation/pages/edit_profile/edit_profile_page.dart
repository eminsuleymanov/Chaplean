import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/assets_paths.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/global_divider.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        leading: Center(
          child: CustomBackButton( 
            onPressed: () {},
            
            icon: Icons.arrow_back,
          ),
        ),
        title: const Padding(
          padding: AppPaddings.all12,
          child: Text(
            AppStrings.editProfile,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: GlobalDivider(),
        ),
      ),
      body: Column(
        children: [
          Image.asset(AssetsPaths.defaultProfileImage),
        ],
      ),
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
