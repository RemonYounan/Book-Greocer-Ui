// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_greocer/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class PageViewItemWidget extends StatelessWidget {
  const PageViewItemWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.2.w),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 6.h,
          ),
          SvgPicture.asset(
            image,
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
