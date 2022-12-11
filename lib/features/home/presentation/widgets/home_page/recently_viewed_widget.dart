import 'package:book_greocer/features/home/data/recently_viewed_book_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecentlyViewedWidget extends StatelessWidget {
  const RecentlyViewedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.w, top: 2.h),
          child: Text(
            'Recently Viewed',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 40.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: recentlyViewedBooksWidgets,
            ),
          ),
        ),
      ],
    );
  }
}
