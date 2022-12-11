// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookCarouselItemWidget extends StatelessWidget {
  const BookCarouselItemWidget({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.auther,
  }) : super(key: key);

  final String imageAsset;
  final String title;
  final String auther;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35.w,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.8.h),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Transform.scale(
              scale: 1.1,
              child: Image.asset(
                imageAsset,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Text(
              auther,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
