import 'package:chaplean/presentation/pages/search/widgets/recent_results.dart';
import 'package:chaplean/utils/constants/app_paddings.dart';
import 'package:chaplean/utils/constants/app_strings.dart';
import 'package:chaplean/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Results extends StatelessWidget {

  const Results({ super.key });

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: AppPaddings.all20,
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.recents,style: AppTextStyles.smalStyle13,),
            SizedBox(height: 5.h,),
            const RecentResults()
          ],
         ),
       );
  }
}