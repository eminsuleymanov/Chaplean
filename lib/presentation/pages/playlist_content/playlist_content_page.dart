import 'package:chaplean/presentation/pages/playlist_content/widgets/playlist_functions.dart';
import 'package:chaplean/presentation/widgets/search_appbar.dart';
import 'package:flutter/material.dart';

class PlaylistContentPage extends StatelessWidget {

  const PlaylistContentPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: SearchAppbar(onPressed: (){},showCustomBackButton: true,),
           body: Column(children:[PlaylistFunctions()])
       );
  }
}