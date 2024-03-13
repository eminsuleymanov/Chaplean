import 'hastags_text_boxes.dart';
import 'music-name.dart';
import 'music_slader.dart';
import 'singer_name.dart';
import '../../../../../utils/constants/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MusicDetailItems extends StatelessWidget {
  const MusicDetailItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all10,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const HastagsTextBoxes(),
            8.verticalSpace,
            const MusicName(),
            4.verticalSpace,
            const SingerName(),
            2.verticalSpace,
            const MusicSlader()
          ]),
    );
  }
}
