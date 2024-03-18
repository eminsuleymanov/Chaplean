import 'package:chaplean/presentation/pages/search/widgets/results.dart';
import 'package:chaplean/utils/constants/app_paddings.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentResults extends StatelessWidget {

  const RecentResults({ super.key });

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: AppPaddings.all20,
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.recents,style: AppTextStyles.smalStyle13,),
            SizedBox(height: 5.h,),
            const Results()
          ],
         ),
       );
  }
}