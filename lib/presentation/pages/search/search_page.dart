import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../widgets/search_appbar.dart';
import 'widgets/results.dart';
import 'widgets/tabbar_content.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int activeTabIndex = 0;
  bool _showRecentResults = true;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
    tabController.addListener(() {
      setState(() {
        activeTabIndex = tabController.index;
      });
    });
  }

  void _handleSearch(String searchText) {
    setState(() {
      _showRecentResults = searchText.isEmpty;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: SearchAppbar(
        showSecondContanier: false,
        showCustomBackButton: true,
        onPressed: () {},
        onSubmitted: _handleSearch,
      ),
      body: _showRecentResults
          ? const Results()
          : TabbarContent(
              controller: tabController,
            ),
    );
  }
}
