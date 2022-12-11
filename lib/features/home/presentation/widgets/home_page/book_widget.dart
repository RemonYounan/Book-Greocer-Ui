// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    Key? key,
    required this.assetName,
    required this.bookName,
    required this.auther,
  }) : super(key: key);

  final String assetName;
  final String bookName;
  final String auther;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            assetName,
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w, bottom: 1.h),
            child: Text(
              bookName,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: Text(
              auther,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
