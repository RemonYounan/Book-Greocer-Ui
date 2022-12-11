import 'package:book_greocer/features/home/data/best_sellers_books_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Text(
            'Best Sellers',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        SizedBox(
          height: 40.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: bestSellersBooksWidgets,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }
}
