import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/generator.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../widgets/custom_back_button.dart';
import '../../../widgets/global_input.dart';
import '../../home/home_page.dart';

class SearchAppbar extends StatefulWidget implements PreferredSizeWidget {
  const SearchAppbar({Key? key}) : super(key: key);

  @override
  _SearchAppbarState createState() => _SearchAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _SearchAppbarState extends State<SearchAppbar> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _showTabBarContent = false;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _showTabBarContent = _textEditingController.text.isNotEmpty;
    });
  }
  void _onSubmitted(String value) {
    setState(() {
      _showTabBarContent = true; // Display tab bar content on submit
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.h,
      titleSpacing: 0,
      backgroundColor: AppColors.primaryColor,
      leadingWidth: 0,
      title: Column(
        children: [
          Padding(
            padding: AppPaddings.all12,
            child: Row(
              children: [
                CustomBackButton(
                  icon: Icons.arrow_back,
                  onPressed: () => Navigate.back(
                    Scaffold.of(context).context,
                    const HomePage(),
                  ),
                ),
                10.horizontalSpace,
                SizedBox(
                  width: 310.w,
                  height: 40.h,
                  child: GlobalInput(
                    controller: _textEditingController,
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintText: AppStrings.search,
                    onChanged: _onSubmitted,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: AppColors.secondaryBlue,
          ),
        ],
      ),
    );
  }
}
