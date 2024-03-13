import '../../widgets/custom_nav_bar.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_side/home_side_bar.dart';
import 'widgets/music_details/music_detail_items.dart';
import 'widgets/music_svg.dart';
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
      appBar: const HomeAppbar(),
      body: PageView.builder(
          onPageChanged: (int page) => {},
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff2f3f63),
                        Color.fromARGB(255, 43, 50, 67),
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        flex: 3,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 4,
                          child: const MusicDetailItems(),
                        )),
                    Expanded(
                        child: SizedBox(
                      height: MediaQuery.of(context).size.height / 2.6,
                      child: const HomeSideBar(),
                    ))
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.1,
                  child: const MusicSvg(),
                )
              ],
            );
          }),
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
