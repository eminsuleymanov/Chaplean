import 'widgets/results.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../widgets/custom_nav_bar.dart';
import '../../widgets/search_appbar.dart';
import 'widgets/tabbar_content.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
   bool _showRecentResults = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
appBar: const SearchAppbar(showSecondContanier: false,showCustomBackButton: true,),
      body: 
      _showRecentResults ? const Results() : const TabbarContent() ,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
