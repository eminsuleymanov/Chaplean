import 'package:chaplean/data/models/feed_model.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class MusicName extends StatelessWidget {
  final FeedModel? musicdetail;

  const MusicName({Key? key, this.musicdetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      musicdetail!.musicName , 
      style: AppTextStyles.appBarTitle25,
    );
  }
}
