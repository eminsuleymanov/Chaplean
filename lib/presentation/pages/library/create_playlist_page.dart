import 'widgets/create_playlist-search.dart';
import '../profile/play_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../profile/profile_playlist_list_tile.dart';

class CreatePlaylistPage extends StatelessWidget {
  const CreatePlaylistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppbar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: false,
            expandedHeight: 120.h,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              background: ColoredBox(
                color: AppColors.primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlayList(),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 2,
            (context, index) {
              return const Padding(
                padding: AppPaddings.tlr24b16,
                child:  ProfilePlaylistListTile(),
              );
            },
          )),
        ],
      ),
    );
  }
}
