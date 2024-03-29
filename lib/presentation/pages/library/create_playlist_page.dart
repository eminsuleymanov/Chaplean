import 'package:chaplean/presentation/pages/library/widgets/playlist_details_bottom_sheet.dart';
import 'package:chaplean/presentation/widgets/bottom_sheet_rounded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../data/models/create_playlist_model.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/assets_paths.dart';
import '../../widgets/custom_list_tile.dart';
import '../../widgets/search_appbar.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppbar(
        showSecondContanier: true,
        showCustomBackButton: false,
        onPressed: () {},
      ),
      body: ListView.separated(
        padding: AppPaddings.tlr24b16,
        shrinkWrap: true,
        itemCount: createPlayListModel.length,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemBuilder: (context, index) {
          final createMusicList = createPlayListModel[index];
          return CustomListTile(
            trailing: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const BottomSheetRounded(
                      children: [
                        PlaylistDetailsBottomSheet(),
                      ],
                    );
                  },
                );
              },
              child: SizedBox(
                child: SvgPicture.asset(AssetsPaths.horizontalDots),
              ),
            ),
            hasTrailing: true,
            hasUsername: true,
            image: createMusicList.image,
            title: createMusicList.title,
            subtitle: createMusicList.subtitle,
          );
        },
      ),
    );
  }
}
