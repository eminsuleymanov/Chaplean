import 'package:chaplean/utils/constants/app_colors.dart';
import 'package:chaplean/utils/constants/app_paddings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:chaplean/utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CommentTile extends StatelessWidget {

  const CommentTile({ super.key, required this.username, required this.comment });
 
 final String username;
 final String comment;
   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: AppPaddings.all16,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             ListTile(
               contentPadding: EdgeInsets.zero,
               leading: Container(
                 width: 24.r,
                 height: 24.r,
                 decoration: BoxDecoration(
                   color: AppColors.etherealWhite,
                   borderRadius: BorderRadius.circular(4),
                 ),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(4),
                   child: Center(
                     child: SvgPicture.asset(
                       AssetsPaths.profileIconFilled,
                       height: 20.r,
                       width: 20.r,
                     ),
                   ),
                 ),
               ),
               title: Text(
                 username,
                 style: AppTextStyles.etheralWhite12,
               ),
             ),
             Text(
               comment,
               style: AppTextStyles.smalStyle10,
             ),
             const Divider(
               color: AppColors.karimunBlue,
             ),
           ],
         ),
       );
  }
}
