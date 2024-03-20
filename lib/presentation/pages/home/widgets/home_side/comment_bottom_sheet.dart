import 'package:chaplean/presentation/pages/home/widgets/home_side/bottom_sheet_box.dart';
import 'package:chaplean/presentation/pages/home/widgets/home_side/comment_tile.dart';
import 'package:chaplean/presentation/widgets/global_input.dart';
import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';

class CommentBottomSheet extends StatelessWidget {
  const CommentBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BottomSheetBox(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return const CommentTile(
                  username: AppStrings.username,
                  comment: AppStrings.commentText,
                );
              },
            ),
          ),
          const GlobalInput(
            hintText: AppStrings.message,
            suffixIcon: Icon(
              Icons.send,
              color: AppColors.etherealWhite,
            ),
          )
        ],
      ),
    );
  }
}
