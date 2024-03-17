import 'package:chaplean/presentation/pages/liked/widgets/custom_list_tile.dart';

import '../../../data/models/list_tile_model.dart';
import '../../../utils/constants/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MusicListView extends StatelessWidget {
  const MusicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.tlr24b16,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: musicListTile.length,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemBuilder: (context, index) {
          final musicList = musicListTile[index];
          return CustomListTile(
            image: musicList.image,
            title: musicList.title,
            subtitle: musicList.subtitle,
          );
        },
      ),
    );
  }
}
