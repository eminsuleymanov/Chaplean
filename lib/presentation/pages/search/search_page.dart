import 'package:chaplean/presentation/pages/search/widgets/recent_results.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import 'widgets/search_appbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: SearchAppbar(),
      body: RecentResults(),
    );
  }
}
