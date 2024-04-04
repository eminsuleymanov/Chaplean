import 'widgets/playlist_functions.dart';
import '../profile/profile_playlist_list_view.dart';
import '../../widgets/search_appbar.dart';
import 'package:flutter/material.dart';

class PlaylistContentPage extends StatelessWidget {
  const PlaylistContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SearchAppbar(
          onPressed: () {},
          showCustomBackButton: true,
        ),
        body: const Column(children: [
          PlaylistFunctions(),
          Divider(),
          ProfilePlaylistListView(
            profileBottomSheet: false,
          )
        ]));
  }
}
