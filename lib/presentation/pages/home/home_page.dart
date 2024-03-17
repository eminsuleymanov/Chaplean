import 'package:chaplean/data/models/feed_model.dart';
import 'package:chaplean/presentation/pages/home/widgets/home_appbar.dart';
import 'package:chaplean/presentation/pages/home/widgets/home_page_details/home_music_layout.dart';
import 'package:chaplean/presentation/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int seletedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const HomeAppbar(),
      body: PageView.builder(
        onPageChanged: (int page) => {},
        scrollDirection: Axis.vertical,
        itemCount: FeedModel.musicDetails.length,
        itemBuilder: (context, index) {
          final musicdetail = FeedModel.musicDetails[index];
          return HomeMusicLayout(musicdetail: musicdetail);
        },
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: seletedIndex,
        onSelect: (i) {
          seletedIndex = i;
          setState(() {});
        },
      ),
    );
  }
}
